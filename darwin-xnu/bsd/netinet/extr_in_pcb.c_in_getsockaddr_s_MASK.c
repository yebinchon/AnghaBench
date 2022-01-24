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
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct inpcb {int /*<<< orphan*/  inp_laddr; int /*<<< orphan*/  inp_lport; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int) ; 
 struct inpcb* FUNC2 (struct socket*) ; 

int
FUNC3(struct socket *so, struct sockaddr_in *ss)
{
	struct sockaddr_in *sin = ss;
	struct inpcb *inp;

	FUNC0(ss != NULL);
	FUNC1(ss, sizeof (*ss));

	sin->sin_family = AF_INET;
	sin->sin_len = sizeof (*sin);

	if ((inp = FUNC2(so)) == NULL)
		return (EINVAL);

	sin->sin_port = inp->inp_lport;
	sin->sin_addr = inp->inp_laddr;
	return (0);
}