#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {int so_state; TYPE_1__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int (* pru_accept ) (struct socket*,struct sockaddr**) ;} ;
struct TYPE_3__ {TYPE_2__* pr_usrreqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROC_NULL ; 
 int SS_NOFDREF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,int) ; 
 int FUNC6 (struct socket*,struct sockaddr**) ; 

int
FUNC7(struct socket *so, struct sockaddr **nam, int dolock)
{
	int error;

	if (dolock)
		FUNC4(so, 1);

	FUNC1(so, PROC_NULL);
	FUNC3(so);
#if NECP
	so_update_necp_policy(so, NULL, NULL);
#endif /* NECP */

	if ((so->so_state & SS_NOFDREF) == 0)
		FUNC0("soaccept: !NOFDREF");
	so->so_state &= ~SS_NOFDREF;
	error = (*so->so_proto->pr_usrreqs->pru_accept)(so, nam);

	if (dolock)
		FUNC5(so, 1);
	return (error);
}