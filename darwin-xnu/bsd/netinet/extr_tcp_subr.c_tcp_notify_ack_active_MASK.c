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
struct tcpcb {int /*<<< orphan*/  snd_una; int /*<<< orphan*/  t_notify_ack; } ;
struct tcp_notify_ack_marker {int /*<<< orphan*/  notify_snd_una; } ;
struct socket {int dummy; } ;

/* Variables and functions */
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tcp_notify_ack_marker* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC4 (struct socket*) ; 
 struct tcpcb* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 

bool
FUNC7(struct socket *so)
{
	if ((FUNC3(so) == PF_INET || FUNC3(so) == PF_INET6) &&
	    FUNC4(so) == SOCK_STREAM) {
		struct tcpcb *tp = FUNC5(FUNC6(so));

		if (!FUNC1(&tp->t_notify_ack)) {
			struct tcp_notify_ack_marker *elm;
			elm = FUNC2(&tp->t_notify_ack);
			if (FUNC0(tp->snd_una, elm->notify_snd_una))
				return (true);
		}
	}
	return (false);
}