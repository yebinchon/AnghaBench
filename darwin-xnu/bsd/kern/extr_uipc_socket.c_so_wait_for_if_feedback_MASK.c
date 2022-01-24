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
struct socket {int so_state; } ;
struct inpcb {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inpcb*) ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int SS_ISCONNECTED ; 
 struct inpcb* FUNC2 (struct socket*) ; 

int
FUNC3(struct socket *so)
{
	if ((FUNC1(so) == PF_INET || FUNC1(so) == PF_INET6) &&
	    (so->so_state & SS_ISCONNECTED)) {
		struct inpcb *inp = FUNC2(so);
		if (FUNC0(inp))
			return (1);
	}
	return (0);
}