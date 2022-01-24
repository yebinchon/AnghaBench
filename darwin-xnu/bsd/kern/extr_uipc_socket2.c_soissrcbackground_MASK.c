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
struct socket {int so_flags1; int /*<<< orphan*/  so_traffic_class; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SOF1_TRAFFIC_MGT_SO_BACKGROUND ; 

inline int
FUNC1(struct socket *so)
{
	return ((so->so_flags1 & SOF1_TRAFFIC_MGT_SO_BACKGROUND) ||
		FUNC0(so->so_traffic_class));
}