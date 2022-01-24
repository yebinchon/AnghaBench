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
struct inpcb {int /*<<< orphan*/  in6p_faddr; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int SS_ISCONNECTED ; 
 int /*<<< orphan*/  in6addr_any ; 
 int FUNC0 (struct socket*) ; 
 struct inpcb* FUNC1 (struct socket*) ; 

__attribute__((used)) static int
FUNC2(struct socket *so)
{
	struct inpcb *inp = FUNC1(so);

	if ((so->so_state & SS_ISCONNECTED) == 0)
		return ENOTCONN;
	inp->in6p_faddr = in6addr_any;
	return FUNC0(so);
}