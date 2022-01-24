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

/* Variables and functions */
 scalar_t__ JSON_RET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 char* FUNC6 (char**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static JSON_VALUE * FUNC11(char **string, UINT nesting) {
	JSON_VALUE *output_value = FUNC2(), *new_value = NULL;
	JSON_OBJECT *output_object = FUNC3(output_value);
	char *new_key = NULL;
	if (output_value == NULL || **string != '{') {
		return NULL;
	}
	FUNC4(string);
	FUNC5(string);
	if (**string == '}') { /* empty object */
		FUNC4(string);
		return output_value;
	}
	while (**string != '\0') {
		new_key = FUNC6(string);
		if (new_key == NULL) {
			FUNC0(output_value);
			return NULL;
		}
		FUNC5(string);
		if (**string != ':') {
			FUNC10(new_key);
			FUNC0(output_value);
			return NULL;
		}
		FUNC4(string);
		new_value = FUNC9(string, nesting);
		if (new_value == NULL) {
			FUNC10(new_key);
			FUNC0(output_value);
			return NULL;
		}
		if (FUNC7(output_object, new_key, new_value) == JSON_RET_ERROR) {
			FUNC10(new_key);
			FUNC0(new_value);
			FUNC0(output_value);
			return NULL;
		}
		FUNC10(new_key);
		FUNC5(string);
		if (**string != ',') {
			break;
		}
		FUNC4(string);
		FUNC5(string);
	}
	FUNC5(string);
	if (**string != '}' || /* Trim object after parsing is over */
		FUNC8(output_object, FUNC1(output_object)) == JSON_RET_ERROR) {
			FUNC0(output_value);
			return NULL;
	}
	FUNC4(string);
	return output_value;
}