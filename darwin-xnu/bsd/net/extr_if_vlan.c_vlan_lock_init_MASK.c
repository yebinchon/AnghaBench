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
typedef  int /*<<< orphan*/  lck_grp_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlan_lck_mtx ; 

__attribute__((used)) static __inline__ void
FUNC2(void)
{
    lck_grp_t *		vlan_lck_grp;

    vlan_lck_grp = FUNC0("if_vlan");
    vlan_lck_mtx = FUNC1(vlan_lck_grp);
}