#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 TYPE_1__* FUNC3 (struct rtentry*) ; 
 unsigned int FUNC4 (struct rtentry*) ; 
 unsigned int FUNC5 (struct rtentry*) ; 

unsigned int
FUNC6(struct rtentry *rt)
{
	unsigned int maxmtu = 0;

	FUNC1(rt);

	FUNC0(rt);

	if (FUNC3(rt)->sa_family == AF_INET6) {
		maxmtu = FUNC5(rt);
	} else {
		maxmtu = FUNC4(rt);
	}

	FUNC2(rt);

	return (maxmtu);
}