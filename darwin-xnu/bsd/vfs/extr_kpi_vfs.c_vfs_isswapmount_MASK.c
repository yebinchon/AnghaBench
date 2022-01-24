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
struct TYPE_3__ {int /*<<< orphan*/  mnt_kern_flag; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MNTK_SWAP_MOUNT ; 

int FUNC1(mount_t mnt)
{
	return mnt && FUNC0(mnt->mnt_kern_flag, MNTK_SWAP_MOUNT) ? 1 : 0;
}