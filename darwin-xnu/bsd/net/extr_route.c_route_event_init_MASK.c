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
struct rtentry {int dummy; } ;
struct route_event {int route_event_code; struct rtentry* gwrt; struct rtentry* rt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct route_event*,int) ; 

void FUNC2(struct route_event *p_route_ev, struct rtentry *rt,
    struct rtentry *gwrt, int route_ev_code)
{
	FUNC0(p_route_ev != NULL);
	FUNC1(p_route_ev, sizeof(*p_route_ev));

	p_route_ev->rt = rt;
	p_route_ev->gwrt = gwrt;
	p_route_ev->route_event_code = route_ev_code;
}