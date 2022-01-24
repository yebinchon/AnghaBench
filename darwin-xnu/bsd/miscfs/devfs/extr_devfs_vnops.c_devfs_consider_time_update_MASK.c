#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct timeval {long tv_sec; } ;
struct TYPE_9__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_8__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_11__ {TYPE_2__ dn_mtime; scalar_t__ dn_update; TYPE_1__ dn_atime; scalar_t__ dn_access; TYPE_3__ dn_ctime; scalar_t__ dn_change; } ;
typedef  TYPE_4__ devnode_t ;

/* Variables and functions */
 int DEVFS_UPDATE_ACCESS ; 
 int DEVFS_UPDATE_CHANGE ; 
 int DEVFS_UPDATE_MOD ; 
 scalar_t__ FUNC0 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*) ; 

__attribute__((used)) static void
FUNC4(devnode_t *dnp, uint32_t just_changed_flags)
{
	struct timeval 		now;
	long now_s;

	FUNC3(&now);
	now_s = now.tv_sec;

	if (dnp->dn_change || (just_changed_flags & DEVFS_UPDATE_CHANGE)) {
		if (FUNC0(now_s, dnp->dn_ctime.tv_sec)) {
			FUNC2(dnp, just_changed_flags);
			return;
		}
	}
	if (dnp->dn_access || (just_changed_flags & DEVFS_UPDATE_ACCESS)) {
		if (FUNC0(now_s, dnp->dn_atime.tv_sec)) {
			FUNC2(dnp, just_changed_flags);
			return;
		}
	}
	if (dnp->dn_update || (just_changed_flags & DEVFS_UPDATE_MOD)) {
		if (FUNC0(now_s, dnp->dn_mtime.tv_sec)) {
			FUNC2(dnp, just_changed_flags);
			return;
		}
	}

	/* Not going to do anything now--mark for later update */
	FUNC1(dnp, just_changed_flags);

	return;
}