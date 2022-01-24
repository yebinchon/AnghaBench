#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_7__ {int numColumns; TYPE_1__* columnInfo; } ;
typedef  TYPE_2__ listBoxDef_t ;
struct TYPE_8__ {scalar_t__ typeData; } ;
typedef  TYPE_3__ itemDef_t ;
struct TYPE_6__ {int pos; int width; int maxChars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int MAX_LB_COLUMNS ; 
 scalar_t__ FUNC1 (int,int*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC2( itemDef_t *item, int handle ) {
	int num, i;
	listBoxDef_t *listPtr;

	FUNC0(item);
	if (!item->typeData)
		return qfalse;
	listPtr = (listBoxDef_t*)item->typeData;
	if (FUNC1(handle, &num)) {
		if (num > MAX_LB_COLUMNS) {
			num = MAX_LB_COLUMNS;
		}
		listPtr->numColumns = num;
		for (i = 0; i < num; i++) {
			int pos, width, maxChars;

			if (FUNC1(handle, &pos) && FUNC1(handle, &width) && FUNC1(handle, &maxChars)) {
				listPtr->columnInfo[i].pos = pos;
				listPtr->columnInfo[i].width = width;
				listPtr->columnInfo[i].maxChars = maxChars;
			} else {
				return qfalse;
			}
		}
	} else {
		return qfalse;
	}
	return qtrue;
}