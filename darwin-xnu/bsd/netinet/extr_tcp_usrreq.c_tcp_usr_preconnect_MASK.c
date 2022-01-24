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
struct inpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRU_PRECONNECT ; 
 scalar_t__ FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 struct inpcb* FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct socket *so)
{
	struct inpcb *inp = FUNC3(so);
	int error = 0;

#if NECP
	if (necp_socket_should_use_flow_divert(inp)) {
		/* May happen, if in tcp_usr_connect we did not had a chance
		 * to set the usrreqs (due to some error). So, let's get out
		 * of here.
		 */
		goto out;
	}
#endif /* NECP */

	error = FUNC5(FUNC4(so));

	FUNC2(so);

	FUNC0(PRU_PRECONNECT);
}