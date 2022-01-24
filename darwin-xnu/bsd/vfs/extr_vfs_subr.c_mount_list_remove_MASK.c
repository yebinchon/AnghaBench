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
typedef  TYPE_2__* mount_t ;
struct TYPE_5__ {int /*<<< orphan*/ * tqe_prev; int /*<<< orphan*/ * tqe_next; } ;
struct TYPE_6__ {TYPE_1__ mnt_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_list ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  mountlist ; 
 int /*<<< orphan*/  nummounts ; 

void
FUNC3(mount_t mp)
{
	FUNC1();
	FUNC0(&mountlist, mp, mnt_list);
	nummounts--;
	mp->mnt_list.tqe_next = NULL;
	mp->mnt_list.tqe_prev = NULL;
	FUNC2();
}