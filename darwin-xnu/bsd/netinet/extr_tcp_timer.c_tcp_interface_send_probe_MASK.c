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
typedef  scalar_t__ u_int16_t ;
struct tcptimerlist {scalar_t__ probe_if_index; int /*<<< orphan*/  mtx; scalar_t__ idleruns; int /*<<< orphan*/  mode; int /*<<< orphan*/  runtime; scalar_t__ scheduled; scalar_t__ running; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  tcps_probe_if_conflict; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_TIMERLIST_10MS_MODE ; 
 scalar_t__ TCP_TIMER_10MS_QUANTUM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_now ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct tcptimerlist tcp_timer_list ; 
 TYPE_1__ tcpstat ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC5(u_int16_t probe_if_index)
{
	int32_t offset = 0;
	struct tcptimerlist *listp = &tcp_timer_list;

	/* Make sure TCP clock is up to date */
	FUNC0();

	FUNC1(listp->mtx);
	if (listp->probe_if_index > 0) {
		tcpstat.tcps_probe_if_conflict++;
		goto done;
	}

	listp->probe_if_index = probe_if_index;
	if (listp->running)
		goto done;

	/*
	 * Reschedule the timerlist to run within the next 10ms, which is
	 * the fastest that we can do.
	 */
	offset = TCP_TIMER_10MS_QUANTUM;
	if (listp->scheduled) {
		int32_t diff;
		diff = FUNC4(listp->runtime, 0, tcp_now, offset);
		if (diff <= 0) {
			/* The timer will fire sooner than what's needed */
			goto done;
		}
	}
	listp->mode = TCP_TIMERLIST_10MS_MODE;
	listp->idleruns = 0;

	FUNC3(offset);

done:
	FUNC2(listp->mtx);
	return;
}