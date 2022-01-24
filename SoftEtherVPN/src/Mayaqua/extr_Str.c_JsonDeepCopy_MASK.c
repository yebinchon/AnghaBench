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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  int /*<<< orphan*/  JSON_OBJECT ;
typedef  int /*<<< orphan*/  JSON_ARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_RET_ERROR ; 
#define  JSON_TYPE_ARRAY 134 
#define  JSON_TYPE_BOOL 133 
#define  JSON_TYPE_ERROR 132 
#define  JSON_TYPE_NULL 131 
#define  JSON_TYPE_NUMBER 130 
#define  JSON_TYPE_OBJECT 129 
#define  JSON_TYPE_STRING 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 char* FUNC21 (char*) ; 

JSON_VALUE * FUNC22(JSON_VALUE *value) {
	UINT i = 0;
	JSON_VALUE *return_value = NULL, *temp_value_copy = NULL, *temp_value = NULL;
	char *temp_string = NULL, *temp_key = NULL;
	char *temp_string_copy = NULL;
	JSON_ARRAY *temp_array = NULL, *temp_array_copy = NULL;
	JSON_OBJECT *temp_object = NULL, *temp_object_copy = NULL;

	switch (FUNC16(value)) {
	case JSON_TYPE_ARRAY:
		temp_array = FUNC11(value);
		return_value = FUNC6();
		if (return_value == NULL) {
			return NULL;
		}
		temp_array_copy = FUNC11(return_value);
		for (i = 0; i < FUNC1(temp_array); i++) {
			temp_value = FUNC0(temp_array, i);
			temp_value_copy = FUNC22(temp_value);
			if (temp_value_copy == NULL) {
				FUNC2(return_value);
				return NULL;
			}
			if (FUNC17(temp_array_copy, temp_value_copy) == JSON_RET_ERROR) {
				FUNC2(return_value);
				FUNC2(temp_value_copy);
				return NULL;
			}
		}
		return return_value;
	case JSON_TYPE_OBJECT:
		temp_object = FUNC14(value);
		return_value = FUNC10();
		if (return_value == NULL) {
			return NULL;
		}
		temp_object_copy = FUNC14(return_value);
		for (i = 0; i < FUNC4(temp_object); i++) {
			temp_key = FUNC5(temp_object, i);
			temp_value = FUNC3(temp_object, temp_key);
			temp_value_copy = FUNC22(temp_value);
			if (temp_value_copy == NULL) {
				FUNC2(return_value);
				return NULL;
			}
			if (FUNC18(temp_object_copy, temp_key, temp_value_copy) == JSON_RET_ERROR) {
				FUNC2(return_value);
				FUNC2(temp_value_copy);
				return NULL;
			}
		}
		return return_value;
	case JSON_TYPE_BOOL:
		return FUNC7(FUNC12(value));
	case JSON_TYPE_NUMBER:
		return FUNC9(FUNC13(value));
	case JSON_TYPE_STRING:
		temp_string = FUNC15(value);
		if (temp_string == NULL) {
			return NULL;
		}
		temp_string_copy = FUNC21(temp_string);
		if (temp_string_copy == NULL) {
			return NULL;
		}
		return_value = FUNC19(temp_string_copy);
		if (return_value == NULL) {
			FUNC20(temp_string_copy);
		}
		return return_value;
	case JSON_TYPE_NULL:
		return FUNC8();
	case JSON_TYPE_ERROR:
		return NULL;
	default:
		return NULL;
	}
}