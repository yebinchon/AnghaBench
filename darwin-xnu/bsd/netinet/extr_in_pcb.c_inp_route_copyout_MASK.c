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
struct route {int /*<<< orphan*/  ro_rt; } ;
struct inpcb {int /*<<< orphan*/  inp_socket; struct route inp_route; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct route*) ; 
 scalar_t__ FUNC1 (struct route*) ; 
 int /*<<< orphan*/  FUNC2 (struct route*,struct route*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct inpcb *inp, struct route *dst)
{
	struct route *src = &inp->inp_route;

	FUNC4(inp->inp_socket);

	/*
	 * If the route in the PCB is stale or not for IPv4, blow it away;
	 * this is possible in the case of IPv4-mapped address case.
	 */
	if (FUNC1(src) || FUNC3(src->ro_rt)->sa_family != AF_INET)
		FUNC0(src);

	FUNC2(dst, src, sizeof (*dst));
}