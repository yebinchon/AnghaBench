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
typedef  int /*<<< orphan*/  JSON_ARRAY ;

/* Variables and functions */
 scalar_t__ JSON_RET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static JSON_VALUE * FUNC9(char **string, UINT nesting) {
	JSON_VALUE *output_value = FUNC2(), *new_array_value = NULL;
	JSON_ARRAY *output_array = FUNC3(output_value);
	if (!output_value || **string != '[') {
		return NULL;
	}
	FUNC4(string);
	FUNC5(string);
	if (**string == ']') { /* empty array */
		FUNC4(string);
		return output_value;
	}
	while (**string != '\0') {
		new_array_value = FUNC8(string, nesting);
		if (new_array_value == NULL) {
			FUNC1(output_value);
			return NULL;
		}
		if (FUNC6(output_array, new_array_value) == JSON_RET_ERROR) {
			FUNC1(new_array_value);
			FUNC1(output_value);
			return NULL;
		}
		FUNC5(string);
		if (**string != ',') {
			break;
		}
		FUNC4(string);
		FUNC5(string);
	}
	FUNC5(string);
	if (**string != ']' || /* Trim array after parsing is over */
		FUNC7(output_array, FUNC0(output_array)) == JSON_RET_ERROR) {
			FUNC1(output_value);
			return NULL;
	}
	FUNC4(string);
	return output_value;
}