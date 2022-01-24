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
struct sockaddr_in6 {int dummy; } ;
struct in6_addr {int dummy; } ;
struct inpcb {struct in6_addr in6p_laddr; int /*<<< orphan*/  inp_lport; } ;
typedef  int /*<<< orphan*/  in_port_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in6*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct in6_addr*,struct sockaddr_in6*) ; 
 struct inpcb* FUNC3 (struct socket*) ; 

int
FUNC4(struct socket *so, struct sockaddr_in6 *ss)
{
	struct inpcb *inp;
	struct in6_addr addr;
	in_port_t port;

	FUNC0(ss != NULL);
	FUNC1(ss, sizeof (*ss));

	if ((inp = FUNC3(so)) == NULL)
		return (EINVAL);

	port = inp->inp_lport;
	addr = inp->in6p_laddr;

	FUNC2(port, &addr, ss);
	return (0);
}