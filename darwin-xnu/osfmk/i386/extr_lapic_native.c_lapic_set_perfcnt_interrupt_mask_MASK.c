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
typedef  int uint32_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int LAPIC_LVT_MASKED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LVT_PERFCNT ; 
 int /*<<< orphan*/  PERFCNT ; 

void FUNC2(boolean_t mask) {
	uint32_t m = (mask ? LAPIC_LVT_MASKED : 0);
	FUNC1(LVT_PERFCNT, FUNC0(PERFCNT) | m);
}