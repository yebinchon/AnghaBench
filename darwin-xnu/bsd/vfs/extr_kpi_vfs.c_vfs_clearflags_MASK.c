#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* mount_t ;
struct TYPE_5__ {int /*<<< orphan*/  mnt_flag; } ;

/* Variables and functions */
 int MNT_CMDFLAGS ; 
 int MNT_VISFLAGMASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void 
FUNC2(mount_t mp , uint64_t flags)
{
	uint32_t lflags = (uint32_t)(flags & (MNT_CMDFLAGS | MNT_VISFLAGMASK)); 

	FUNC0(mp);
	mp->mnt_flag &= ~lflags;
	FUNC1(mp);
}