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
struct TYPE_3__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ rectDef_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC1(int handle, rectDef_t *r) {
	if (FUNC0(handle, &r->x)) {
		if (FUNC0(handle, &r->y)) {
			if (FUNC0(handle, &r->w)) {
				if (FUNC0(handle, &r->h)) {
					return qtrue;
				}
			}
		}
	}
	return qfalse;
}