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

/* Variables and functions */
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  LCK_GRP_ATTR_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmx_lck_grp ; 
 int /*<<< orphan*/  vmx_lck_mtx ; 

void
FUNC3()
{
	vmx_lck_grp = FUNC1("vmx", LCK_GRP_ATTR_NULL);
	FUNC0(vmx_lck_grp);

	vmx_lck_mtx = FUNC2(vmx_lck_grp, LCK_ATTR_NULL);
	FUNC0(vmx_lck_mtx);
}