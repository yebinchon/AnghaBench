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
typedef  TYPE_1__* mount_t ;
struct TYPE_3__ {void* mnt_throttle_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void 
FUNC2(mount_t mp, void *throttle_info)
{
	if ((throttle_info == NULL) || (mp == NULL))
		return;
	FUNC0(throttle_info);

	/*
	 * We already have a reference release it before adding the new one
	 */
	if (mp->mnt_throttle_info)
		FUNC1(mp->mnt_throttle_info);
	mp->mnt_throttle_info = throttle_info;
}