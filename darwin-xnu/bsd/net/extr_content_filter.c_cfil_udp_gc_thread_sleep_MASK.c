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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_INTERRUPTIBLE ; 
 int /*<<< orphan*/  UDP_FLOW_GC_RUN_INTERVAL_NSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfil_sock_udp_attached_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(bool forever)
{
	if (forever) {
		(void) FUNC0((event_t) &cfil_sock_udp_attached_count,
						   THREAD_INTERRUPTIBLE);
	} else {
		uint64_t deadline = 0;
		FUNC3(UDP_FLOW_GC_RUN_INTERVAL_NSEC, &deadline);
		FUNC2(deadline, &deadline);

		(void) FUNC1(&cfil_sock_udp_attached_count,
									THREAD_INTERRUPTIBLE, deadline);
	}
}