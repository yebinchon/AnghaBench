#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct unpcb {TYPE_1__* unp_conn; struct socket* unp_socket; } ;
struct socket {scalar_t__ so_type; } ;
struct TYPE_2__ {struct socket* unp_socket; } ;

/* Variables and functions */
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct socket*) ; 

__attribute__((used)) static void
FUNC3(struct unpcb *unp)
{
	struct socket *so = unp->unp_socket;
	struct socket *so2;
	if (unp->unp_socket->so_type == SOCK_STREAM && unp->unp_conn) {
		so2 = unp->unp_conn->unp_socket;
		FUNC2(so, so2);
		FUNC0(so2);
		FUNC1(so2, 1);
	}
}