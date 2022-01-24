#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_9__ {TYPE_1__** items; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
typedef  TYPE_1__ JSON_VALUE ;
typedef  TYPE_2__ JSON_ARRAY ;

/* Variables and functions */
 size_t JSON_RET_ERROR ; 
 size_t JSON_RET_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t) ; 
 size_t FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

UINT FUNC4(JSON_ARRAY *array, UINT ix, JSON_VALUE *value) {
	if (array == NULL || value == NULL || value->parent != NULL || ix >= FUNC1(array)) {
		return JSON_RET_ERROR;
	}
	FUNC3(FUNC0(array, ix));
	value->parent = FUNC2(array);
	array->items[ix] = value;
	return JSON_RET_OK;
}