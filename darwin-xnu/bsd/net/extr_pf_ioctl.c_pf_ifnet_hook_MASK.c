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
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  pf_perim_lock ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 

void
FUNC6(struct ifnet *ifp, int attach)
{
	FUNC3(pf_perim_lock);
	FUNC0(pf_lock);
	if (attach)
		FUNC4(ifp);
	else
		FUNC5(ifp);
	FUNC1(pf_lock);
	FUNC2(pf_perim_lock);
}