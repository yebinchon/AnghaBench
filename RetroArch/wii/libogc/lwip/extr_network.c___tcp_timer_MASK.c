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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  net_tcp_ticks ; 
 int /*<<< orphan*/  FUNC4 (char*,int,scalar_t__,scalar_t__) ; 
 scalar_t__ tcp_active_pcbs ; 
 int tcp_timer_active ; 
 int /*<<< orphan*/  tcp_timer_cntrl ; 
 scalar_t__ tcp_tmr ; 
 scalar_t__ tcp_tw_pcbs ; 
 int /*<<< orphan*/  tmr_callback ; 

__attribute__((used)) static void FUNC5(void *arg)
{
#ifdef _NET_DEBUG
	printf("__tcp_timer(%d,%p,%p)\n",tcp_timer_active,tcp_active_pcbs,tcp_tw_pcbs);
#endif
	FUNC0();
	FUNC3(tmr_callback,(void*)tcp_tmr);
	if (tcp_active_pcbs || tcp_tw_pcbs) {
		FUNC2(&tcp_timer_cntrl,net_tcp_ticks);
	} else
		tcp_timer_active = 0;
	FUNC1();
}