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
struct tcpcb {int dummy; } ;
struct socket {int dummy; } ;
struct inpcb {scalar_t__ inp_state; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ INPCB_STATE_DEAD ; 
 int /*<<< orphan*/  PRU_DETACH ; 
 int /*<<< orphan*/  TCPDEBUG0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct tcpcb* FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 struct inpcb* FUNC5 (struct socket*) ; 
 struct tcpcb* FUNC6 (struct tcpcb*) ; 

__attribute__((used)) static int
FUNC7(struct socket *so)
{
	int error = 0;
	struct inpcb *inp = FUNC5(so);
	struct tcpcb *tp;
	TCPDEBUG0;

	if (inp == 0 || (inp->inp_state == INPCB_STATE_DEAD)) {
		return EINVAL;	/* XXX */
	}
	FUNC4(so);
	tp = FUNC3(inp);
	/* In case we got disconnected from the peer */
        if (tp == NULL)
		goto out;
	FUNC0();

	FUNC2();

	tp = FUNC6(tp);
out:
	FUNC1(PRU_DETACH);
	return error;
}