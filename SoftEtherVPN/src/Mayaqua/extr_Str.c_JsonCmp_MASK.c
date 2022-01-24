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
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  int /*<<< orphan*/  JSON_OBJECT ;
typedef  int /*<<< orphan*/  JSON_ARRAY ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int FUNC12(JSON_VALUE *a, JSON_VALUE *b) {
	JSON_OBJECT *a_object = NULL, *b_object = NULL;
	JSON_ARRAY *a_array = NULL, *b_array = NULL;
	char *a_string = NULL, *b_string = NULL;
	char *key = NULL;
	UINT a_count = 0, b_count = 0, i = 0;
	UINT a_type, b_type;
	UINT64 a_num, b_num;
	a_type = FUNC10(a);
	b_type = FUNC10(b);
	if (a_type != b_type) {
		return 0;
	}
	switch (a_type) {
	case JSON_TYPE_ARRAY:
		a_array = FUNC5(a);
		b_array = FUNC5(b);
		a_count = FUNC1(a_array);
		b_count = FUNC1(b_array);
		if (a_count != b_count) {
			return 0;
		}
		for (i = 0; i < a_count; i++) {
			if (!FUNC12(FUNC0(a_array, i),
				FUNC0(b_array, i))) {
					return 0;
			}
		}
		return 1;
	case JSON_TYPE_OBJECT:
		a_object = FUNC8(a);
		b_object = FUNC8(b);
		a_count = FUNC3(a_object);
		b_count = FUNC3(b_object);
		if (a_count != b_count) {
			return 0;
		}
		for (i = 0; i < a_count; i++) {
			key = FUNC4(a_object, i);
			if (!FUNC12(FUNC2(a_object, key),
				FUNC2(b_object, key))) {
					return 0;
			}
		}
		return 1;
	case JSON_TYPE_STRING:
		a_string = FUNC9(a);
		b_string = FUNC9(b);
		if (a_string == NULL || b_string == NULL) {
			return 0; /* shouldn't happen */
		}
		return FUNC11(a_string, b_string) == 0;
	case JSON_TYPE_BOOL:
		return FUNC6(a) == FUNC6(b);
	case JSON_TYPE_NUMBER:
		a_num = FUNC7(a);
		b_num = FUNC7(b);
		return a_num == b_num;
	case JSON_TYPE_ERROR:
		return 1;
	case JSON_TYPE_NULL:
		return 1;
	default:
		return 1;
	}
}