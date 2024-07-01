//
//  UnknownSchema.swift
//
// SPDX-License-Identifier: Apache-2.0
// Copyright Contributors to the OpenTimelineIO project

import Foundation
import OpenTimelineIO_CXX

public class UnknownSchema : SerializableObject {
    override internal init(_ cxxPtr: CxxSerializableObjectPtr) {
        super.init(cxxPtr)
    }
    
    public var originalSchemaName: String {
        return unknown_schema_original_schema_name(self)
    }

    public var originalSchemaVersion: Int {
        return Int(unknown_schema_original_schema_version(self))
    }
}
