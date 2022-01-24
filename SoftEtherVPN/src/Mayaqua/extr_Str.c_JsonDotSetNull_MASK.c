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
 scalar_t__ JSON_RET_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 

UINT FUNC3(JSON_OBJECT *object, char *name) {
	JSON_VALUE *value = FUNC2();
	if (value == NULL) {
		return JSON_RET_ERROR;
	}
	if (FUNC0(object, name, value) == JSON_RET_ERROR) {
		FUNC1(value);
		return JSON_RET_ERROR;
	}
	return JSON_RET_OK;
}