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
struct sockaddr {int dummy; } ;
struct inpcb {int inp_vflag; } ;

/* Variables and functions */
 int EINVAL ; 
 int INP_IPV4 ; 
 int FUNC0 (struct socket*,struct sockaddr**) ; 
 int FUNC1 (struct sockaddr**) ; 
 int FUNC2 (struct socket*,struct sockaddr**) ; 
 struct inpcb* FUNC3 (struct socket*) ; 

int
FUNC4(struct socket *so, struct sockaddr **nam)
{
	struct	inpcb *inp = FUNC3(so);
	int	error;

	if (inp == NULL)
		return (EINVAL);
	if (inp->inp_vflag & INP_IPV4) {
		error = FUNC2(so, nam);
		if (error == 0)
			error = FUNC1(nam);
	} else {
		/* scope issues will be handled in in6_getsockaddr(). */
		error = FUNC0(so, nam);
	}
	return (error);
}