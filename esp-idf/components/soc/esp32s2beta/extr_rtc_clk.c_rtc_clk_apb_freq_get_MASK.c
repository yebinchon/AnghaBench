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

/* Variables and functions */
 int MHZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_APB_FREQ_REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

uint32_t FUNC2(void)
{
    uint32_t freq_hz = FUNC1(FUNC0(RTC_APB_FREQ_REG)) << 12;
    // round to the nearest MHz
    freq_hz += MHZ / 2;
    uint32_t remainder = freq_hz % MHZ;
    return freq_hz - remainder;
}