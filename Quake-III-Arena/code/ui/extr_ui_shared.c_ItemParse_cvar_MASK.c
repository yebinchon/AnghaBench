#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_5__ {scalar_t__ typeData; int /*<<< orphan*/  cvar; } ;
typedef  TYPE_1__ itemDef_t ;
struct TYPE_6__ {int minVal; int maxVal; int defVal; } ;
typedef  TYPE_2__ editFieldDef_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC2( itemDef_t *item, int handle ) {
	editFieldDef_t *editPtr;

	FUNC0(item);
	if (!FUNC1(handle, &item->cvar)) {
		return qfalse;
	}
	if (item->typeData) {
		editPtr = (editFieldDef_t*)item->typeData;
		editPtr->minVal = -1;
		editPtr->maxVal = -1;
		editPtr->defVal = -1;
	}
	return qtrue;
}