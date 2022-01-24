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
struct tcpcb {int /*<<< orphan*/  snd_wnd; int /*<<< orphan*/  max_sndwnd; int /*<<< orphan*/  t_maxseg; } ;
struct socket {int so_flags1; int /*<<< orphan*/  last_pid; } ;
struct inpcb {int /*<<< orphan*/  necp_client_uuid; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int /*<<< orphan*/  IFSCOPE_NONE ; 
 int SOF1_PRECONNECT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC4 (struct socket*) ; 
 struct tcpcb* FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcpcb*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct socket *so)
{
	struct tcpcb *tp = FUNC5(so);
	struct inpcb *inp = FUNC4(so);
	int error = 0;

	/* TFO delays the tcp_output until later, when the app calls write() */
	if (so->so_flags1 & SOF1_PRECONNECT_DATA) {
		if (!FUNC1(FUNC4(so), NULL, NULL, NULL))
			return (EHOSTUNREACH);

		/* Initialize enough state so that we can actually send data */
		FUNC6(tp, -1, IFSCOPE_NONE);
		tp->snd_wnd = tp->t_maxseg;
		tp->max_sndwnd = tp->snd_wnd;
	} else {
		error = FUNC7(tp);
	}

#if NECP
	/* Update NECP client with connected five-tuple */
	if (error == 0 && !uuid_is_null(inp->necp_client_uuid)) {
		socket_unlock(so, 0);
		necp_client_assign_from_socket(so->last_pid, inp->necp_client_uuid, inp);
		socket_lock(so, 0);
	}
#endif /* NECP */

	return (error);
}