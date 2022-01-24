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
struct TYPE_5__ {int /*<<< orphan*/  fov_x; } ;
typedef  TYPE_1__ modelDef_t ;
struct TYPE_6__ {scalar_t__ typeData; } ;
typedef  TYPE_2__ itemDef_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC2( itemDef_t *item, int handle ) {
	modelDef_t *modelPtr;
	FUNC0(item);
	modelPtr = (modelDef_t*)item->typeData;

	if (!FUNC1(handle, &modelPtr->fov_x)) {
		return qfalse;
	}
	return qtrue;
}