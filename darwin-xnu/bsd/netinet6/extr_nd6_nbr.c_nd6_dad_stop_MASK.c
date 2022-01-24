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
struct ifaddr {int dummy; } ;
struct dadq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC1 (struct dadq*,struct ifaddr*) ; 
 struct dadq* FUNC2 (struct ifaddr*,int /*<<< orphan*/ *) ; 
 scalar_t__ nd6_dad_timer ; 
 int /*<<< orphan*/  FUNC3 (void (*) (void*),void*) ; 

void
FUNC4(struct ifaddr *ifa)
{
	struct dadq *dp;

	dp = FUNC2(ifa, NULL);
	if (!dp) {
		/* DAD wasn't started yet */
		return;
	}

	FUNC3((void (*)(void *))nd6_dad_timer, (void *)ifa);

	FUNC1(dp, ifa);
	FUNC0(dp);		/* drop our reference */
}