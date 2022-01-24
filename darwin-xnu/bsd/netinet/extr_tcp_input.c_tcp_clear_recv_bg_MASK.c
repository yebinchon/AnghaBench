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
struct socket {int /*<<< orphan*/  so_traffic_class; int /*<<< orphan*/  so_flags1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  SOF1_TRAFFIC_MGT_TCP_RECVBG ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct socket *so)
{
	if (FUNC0(so))
		so->so_flags1 &= ~(SOF1_TRAFFIC_MGT_TCP_RECVBG);

	/*
	 * Set/unset use of Large Receive Offload depending on
	 * the traffic class
	 */
	FUNC1(so, so->so_traffic_class);
}