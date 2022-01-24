#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  TYPE_1__* devfs_vnode_event_t ;
typedef  TYPE_2__* devfs_event_log_t ;
struct TYPE_5__ {size_t del_used; TYPE_1__* del_entries; } ;
struct TYPE_4__ {int /*<<< orphan*/  dve_vp; int /*<<< orphan*/  dve_events; int /*<<< orphan*/  dve_vid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(devfs_event_log_t delp) 
{
	uint32_t i;
	for (i = 0; i < delp->del_used; i++) {
		devfs_vnode_event_t dvep = &delp->del_entries[i];
		if (FUNC0(dvep->dve_vp, dvep->dve_vid) == 0) {
			FUNC1(dvep->dve_vp, dvep->dve_events, NULL);
			FUNC2(dvep->dve_vp);
		}
	}
}