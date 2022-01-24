#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  int /*<<< orphan*/  JSON_OBJECT ;
typedef  int /*<<< orphan*/  JSON_ARRAY ;

/* Variables and functions */
 int JSON_RET_ERROR ; 
 int JSON_RET_OK ; 
#define  JSON_TYPE_ARRAY 134 
#define  JSON_TYPE_BOOL 133 
#define  JSON_TYPE_ERROR 132 
#define  JSON_TYPE_NULL 131 
#define  JSON_TYPE_NUMBER 130 
#define  JSON_TYPE_OBJECT 129 
#define  JSON_TYPE_STRING 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

UINT FUNC8(JSON_VALUE *schema, JSON_VALUE *value) {
	JSON_VALUE *temp_schema_value = NULL, *temp_value = NULL;
	JSON_ARRAY *schema_array = NULL, *value_array = NULL;
	JSON_OBJECT *schema_object = NULL, *value_object = NULL;
	UINT schema_type = JSON_TYPE_ERROR, value_type = JSON_TYPE_ERROR;
	char *key = NULL;
	UINT i = 0, count = 0;
	if (schema == NULL || value == NULL) {
		return JSON_RET_ERROR;
	}
	schema_type = FUNC7(schema);
	value_type = FUNC7(value);
	if (schema_type != value_type && schema_type != JSON_TYPE_NULL) { /* null represents all values */
		return JSON_RET_ERROR;
	}
	switch (schema_type) {
	case JSON_TYPE_ARRAY:
		schema_array = FUNC5(schema);
		value_array = FUNC5(value);
		count = FUNC1(schema_array);
		if (count == 0) {
			return JSON_RET_OK; /* Empty array allows all types */
		}
		/* Get first value from array, rest is ignored */
		temp_schema_value = FUNC0(schema_array, 0);
		for (i = 0; i < FUNC1(value_array); i++) {
			temp_value = FUNC0(value_array, i);
			if (FUNC8(temp_schema_value, temp_value) == JSON_RET_ERROR) {
				return JSON_RET_ERROR;
			}
		}
		return JSON_RET_OK;
	case JSON_TYPE_OBJECT:
		schema_object = FUNC6(schema);
		value_object = FUNC6(value);
		count = FUNC3(schema_object);
		if (count == 0) {
			return JSON_RET_OK; /* Empty object allows all objects */
		}
		else if (FUNC3(value_object) < count) {
			return JSON_RET_ERROR; /* Tested object mustn't have less name-value pairs than schema */
		}
		for (i = 0; i < count; i++) {
			key = FUNC4(schema_object, i);
			temp_schema_value = FUNC2(schema_object, key);
			temp_value = FUNC2(value_object, key);
			if (temp_value == NULL) {
				return JSON_RET_ERROR;
			}
			if (FUNC8(temp_schema_value, temp_value) == JSON_RET_ERROR) {
				return JSON_RET_ERROR;
			}
		}
		return JSON_RET_OK;
	case JSON_TYPE_STRING: case JSON_TYPE_NUMBER: case JSON_TYPE_BOOL: case JSON_TYPE_NULL:
		return JSON_RET_OK; /* equality already tested before switch */
	case JSON_TYPE_ERROR: default:
		return JSON_RET_ERROR;
	}
}