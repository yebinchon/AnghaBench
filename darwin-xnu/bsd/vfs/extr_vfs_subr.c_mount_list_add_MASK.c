#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mount_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_list ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  mountlist ; 
 int /*<<< orphan*/  nummounts ; 
 scalar_t__ system_inshutdown ; 

int
FUNC3(mount_t mp)
{
	int res;

	FUNC1();
	if (system_inshutdown != 0) {
		res = -1;
	} else {
		FUNC0(&mountlist, mp, mnt_list);	
		nummounts++;
		res = 0;
	}
	FUNC2();

	return res;
}