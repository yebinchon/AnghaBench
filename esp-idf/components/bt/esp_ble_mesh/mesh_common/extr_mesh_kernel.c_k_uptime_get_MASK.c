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
typedef  int s64_t ;

/* Variables and functions */
 int FUNC0 () ; 

s64_t FUNC1(void)
{
    /** k_uptime_get_32 is in in milliseconds,
     * but esp_timer_get_time is in microseconds
     */
    return (FUNC0() / 1000);
}