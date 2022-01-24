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
typedef  TYPE_1__* devfs_event_log_t ;
struct TYPE_3__ {int /*<<< orphan*/ * del_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(devfs_event_log_t delp, int need_free)
{
	if (delp->del_entries == NULL) {
		FUNC1("Free of devfs notify info that has not been intialized.\n");
	}

	if (need_free) {
		FUNC0(delp->del_entries, M_TEMP);
	}

	delp->del_entries = NULL;
}