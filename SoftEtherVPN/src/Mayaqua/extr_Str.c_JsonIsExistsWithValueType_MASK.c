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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(JSON_OBJECT *object, char *name, UINT type) {
	JSON_VALUE *val = FUNC0(object, name);
	return val != NULL && FUNC1(val) == type;
}