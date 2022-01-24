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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_notify_ack_marker* FUNC1 (int /*<<< orphan*/ *) ; 
 int SO_FILT_HINT_LOCKED ; 
 int SO_FILT_HINT_NOTIFY_ACK ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int) ; 

inline void
FUNC3(struct tcpcb *tp, struct socket *so)
{
	struct tcp_notify_ack_marker *elm;

	elm = FUNC1(&tp->t_notify_ack);
	if (FUNC0(tp->snd_una, elm->notify_snd_una)) {
		FUNC2(so, SO_FILT_HINT_LOCKED | SO_FILT_HINT_NOTIFY_ACK);
	}
}