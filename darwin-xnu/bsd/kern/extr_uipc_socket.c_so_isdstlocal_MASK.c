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
struct socket {scalar_t__ so_pcb; } ;
struct inpcb {int /*<<< orphan*/  in6p_faddr; int /*<<< orphan*/  inp_faddr; } ;

/* Variables and functions */
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ FUNC0 (struct socket*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct socket *so) {

	struct inpcb *inp = (struct inpcb *)so->so_pcb;

	if (FUNC0(so) == PF_INET)
		return (FUNC2(inp->inp_faddr));
	else if (FUNC0(so) == PF_INET6)
		return (FUNC1(&inp->in6p_faddr));

	return (0);
}