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
struct ifaddr {int /*<<< orphan*/  ifa_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  ifa_mtx_grp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ifaddr *ifa)
{
	FUNC0(ifa);
	FUNC1(&ifa->ifa_lock, ifa_mtx_grp);
}