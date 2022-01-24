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
typedef  int /*<<< orphan*/  u_long ;
struct socket {int dummy; } ;
struct proc {int dummy; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifnet*,struct proc*) ; 
 int FUNC1 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifnet*,struct proc*) ; 

__attribute__((used)) static int
FUNC2(struct socket *so, u_long cmd, caddr_t data, struct ifnet *ifp, struct proc *p)
{
	int error = FUNC0(so, cmd, data, ifp, p);

	if (error == EOPNOTSUPP) {
		error = FUNC1(so, cmd, data, ifp, p);
	}

	return error;
}