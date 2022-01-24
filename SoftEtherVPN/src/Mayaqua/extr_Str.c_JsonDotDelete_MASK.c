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
typedef  int /*<<< orphan*/  JSON_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_RET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char) ; 

UINT FUNC5(JSON_OBJECT *object, char *name) {
	char *dot_pos = FUNC4(name, '.');
	char *current_name = NULL;
	JSON_OBJECT *temp_obj = NULL;
	if (dot_pos == NULL) {
		return FUNC0(object, name);
	}
	else {
		current_name = FUNC3(name, (UINT)(dot_pos - name));
		temp_obj = FUNC1(object, current_name);
		FUNC2(current_name);
		if (temp_obj == NULL) {
			return JSON_RET_ERROR;
		}
		return FUNC5(temp_obj, dot_pos + 1);
	}
}