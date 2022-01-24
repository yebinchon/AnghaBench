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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct inpcb {int inp_flags; int /*<<< orphan*/  inp_vflag; } ;

/* Variables and functions */
 int EINVAL ; 
 int IN6P_IPV6_V6ONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INP_IPV4 ; 
 int /*<<< orphan*/  INP_IPV6 ; 
 int FUNC2 (struct inpcb*,struct sockaddr*,struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*,struct sockaddr_in6*) ; 
 int FUNC4 (struct inpcb*,struct sockaddr*,struct proc*) ; 
 struct inpcb* FUNC5 (struct socket*) ; 

__attribute__((used)) static int
FUNC6(struct socket *so, struct sockaddr *nam, struct proc *p)
{
	struct inpcb *inp;
	int error;

	inp = FUNC5(so);
	if (inp == NULL)
		return (EINVAL);

	inp->inp_vflag &= ~INP_IPV4;
	inp->inp_vflag |= INP_IPV6;
	if ((inp->inp_flags & IN6P_IPV6_V6ONLY) == 0) {
		struct sockaddr_in6 *sin6_p;

		sin6_p = (struct sockaddr_in6 *)(void *)nam;

		if (FUNC0(&sin6_p->sin6_addr)) {
			inp->inp_vflag |= INP_IPV4;
		} else if (FUNC1(&sin6_p->sin6_addr)) {
			struct sockaddr_in sin;

			FUNC3(&sin, sin6_p);
			inp->inp_vflag |= INP_IPV4;
			inp->inp_vflag &= ~INP_IPV6;
			error = FUNC4(inp, (struct sockaddr *)&sin, p);
			return (error);
		}
	}

	error = FUNC2(inp, nam, p);
	return (error);
}