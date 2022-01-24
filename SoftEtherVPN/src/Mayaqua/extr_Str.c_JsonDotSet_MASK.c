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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  int /*<<< orphan*/  JSON_OBJECT ;

/* Variables and functions */
 scalar_t__ JSON_RET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,scalar_t__) ; 
 char* FUNC7 (char*,char) ; 

UINT FUNC8(JSON_OBJECT *object, char *name, JSON_VALUE *value) {
	char *dot_pos = NULL;
	char *current_name = NULL;
	JSON_OBJECT *temp_obj = NULL;
	JSON_VALUE *new_value = NULL;
	if (object == NULL || name == NULL || value == NULL) {
		return JSON_RET_ERROR;
	}
	dot_pos = FUNC7(name, '.');
	if (dot_pos == NULL) {
		return FUNC3(object, name, value);
	}
	else {
		current_name = FUNC6(name, (UINT)(dot_pos - name));
		temp_obj = FUNC1(object, current_name);
		if (temp_obj == NULL) {
			new_value = FUNC2();
			if (new_value == NULL) {
				FUNC5(current_name);
				return JSON_RET_ERROR;
			}
			if (FUNC4(object, current_name, new_value) == JSON_RET_ERROR) {
				FUNC0(new_value);
				FUNC5(current_name);
				return JSON_RET_ERROR;
			}
			temp_obj = FUNC1(object, current_name);
		}
		FUNC5(current_name);
		return FUNC8(temp_obj, dot_pos + 1, value);
	}
}