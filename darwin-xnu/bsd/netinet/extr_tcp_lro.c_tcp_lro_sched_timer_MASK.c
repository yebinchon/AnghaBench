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

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int TCP_RETRANSHZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  coalesc_time ; 
 int /*<<< orphan*/  lro_deadline ; 
 int lro_timer_set ; 
 int /*<<< orphan*/  tcp_lro_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(uint64_t hint)
{
	if (lro_timer_set) {
		return;
	}

	lro_timer_set = 1;
	if (!hint) {
		/* the intent is to wake up every coalesc_time msecs */
		FUNC0(coalesc_time, 
			(NSEC_PER_SEC / TCP_RETRANSHZ), &lro_deadline);
	} else {
		FUNC0(hint, NSEC_PER_SEC / TCP_RETRANSHZ,
                        &lro_deadline);
	}
	FUNC1(tcp_lro_timer, lro_deadline);
}