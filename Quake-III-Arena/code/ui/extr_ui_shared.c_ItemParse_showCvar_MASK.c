#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {int /*<<< orphan*/  cvarFlags; int /*<<< orphan*/  enableCvar; } ;
typedef  TYPE_1__ itemDef_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVAR_SHOW ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC1( itemDef_t *item, int handle ) {
	if (FUNC0(handle, &item->enableCvar)) {
		item->cvarFlags = CVAR_SHOW;
		return qtrue;
	}
	return qfalse;
}