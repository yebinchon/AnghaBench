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
typedef  int /*<<< orphan*/  lck_grp_attr_t ;
typedef  int /*<<< orphan*/  lck_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPTAP_IFNAME ; 
 int /*<<< orphan*/  iptap_grp ; 
 int /*<<< orphan*/  iptap_lck_rw ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void)
{
	lck_grp_attr_t *grp_attr;
	lck_attr_t *attr;
	
	grp_attr = FUNC4();
	FUNC6(grp_attr);
	iptap_grp = FUNC3(IPTAP_IFNAME, grp_attr);
	FUNC5(grp_attr);
	
	attr = FUNC0();
	FUNC2(attr);
	
	FUNC7(&iptap_lck_rw, iptap_grp, attr);
	FUNC1(attr);
}