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
struct TYPE_5__ {size_t numColors; int /*<<< orphan*/ * colorRanges; } ;
typedef  TYPE_1__ itemDef_t ;
struct TYPE_6__ {int /*<<< orphan*/  color; int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
typedef  TYPE_2__ colorRangeDef_t ;
typedef  int /*<<< orphan*/  color ;

/* Variables and functions */
 size_t MAX_COLOR_RANGES ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC3( itemDef_t *item, int handle ) {
	colorRangeDef_t color;

	if (FUNC1(handle, &color.low) &&
		FUNC1(handle, &color.high) &&
		FUNC0(handle, &color.color) ) {
		if (item->numColors < MAX_COLOR_RANGES) {
			FUNC2(&item->colorRanges[item->numColors], &color, sizeof(color));
			item->numColors++;
		}
		return qtrue;
	}
	return qfalse;
}