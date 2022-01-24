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
typedef  int uint8_t ;
typedef  unsigned long uint32_t ;

/* Variables and functions */
 unsigned long const UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long const) ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long const FUNC3 () ; 

unsigned long FUNC4(uint8_t pin, uint8_t state, unsigned long timeout)
{
    const uint32_t max_timeout_us = FUNC1(UINT_MAX);
    if (timeout > max_timeout_us) {
        timeout = max_timeout_us;
    }
    const uint32_t timeout_cycles = FUNC2(timeout);
    const uint32_t start_cycle_count = FUNC3();
    FUNC0(!state);
    FUNC0(state);
    const uint32_t pulse_start_cycle_count = FUNC3();
    FUNC0(!state);
    return FUNC1(FUNC3() - pulse_start_cycle_count);
}