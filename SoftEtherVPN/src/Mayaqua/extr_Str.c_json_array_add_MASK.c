#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int count; int capacity; TYPE_1__** items; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ JSON_VALUE ;
typedef  TYPE_2__ JSON_ARRAY ;

/* Variables and functions */
 scalar_t__ JSON_RET_ERROR ; 
 scalar_t__ JSON_RET_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STARTING_CAPACITY ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static UINT FUNC3(JSON_ARRAY *array, JSON_VALUE *value) {
	if (array->count >= array->capacity) {
		UINT new_capacity = FUNC1(array->capacity * 2, STARTING_CAPACITY);
		if (FUNC2(array, new_capacity) == JSON_RET_ERROR) {
			return JSON_RET_ERROR;
		}
	}
	value->parent = FUNC0(array);
	array->items[array->count] = value;
	array->count++;
	return JSON_RET_OK;
}