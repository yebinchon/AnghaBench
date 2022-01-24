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
struct socket {int dummy; } ;
struct inpcb {int /*<<< orphan*/ * in6p_icmp6filt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PCB ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct inpcb* FUNC3 (struct socket*) ; 

__attribute__((used)) static int
FUNC4(struct socket *so)
{
	struct inpcb *inp;

	inp = FUNC3(so);
	if (inp == 0)
		FUNC2("rip6_detach");
	/* xxx: RSVP */
	if (inp->in6p_icmp6filt) {
		FUNC0(inp->in6p_icmp6filt, M_PCB);
		inp->in6p_icmp6filt = NULL;
	}
	FUNC1(inp);
	return 0;
}