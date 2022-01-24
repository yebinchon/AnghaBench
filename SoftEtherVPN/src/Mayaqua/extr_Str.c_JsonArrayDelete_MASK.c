#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_5__ {int items; int count; } ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  TYPE_1__ JSON_ARRAY ;

/* Variables and functions */
 int JSON_RET_ERROR ; 
 int JSON_RET_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 

UINT FUNC4(JSON_ARRAY *array, UINT ix) {
	UINT to_move_bytes = 0;
	if (array == NULL || ix >= FUNC1(array)) {
		return JSON_RET_ERROR;
	}
	FUNC2(FUNC0(array, ix));
	to_move_bytes = (FUNC1(array) - 1 - ix) * sizeof(JSON_VALUE*);
	FUNC3(array->items + ix, array->items + ix + 1, to_move_bytes);
	array->count -= 1;
	return JSON_RET_OK;
}