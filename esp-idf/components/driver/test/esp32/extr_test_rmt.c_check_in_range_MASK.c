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
 int FUNC0 (int) ; 

__attribute__((used)) static inline bool FUNC1(int duration_ticks, int target_us, int margin_us)
{
    if(( FUNC0(duration_ticks) < (target_us + margin_us))
        && ( FUNC0(duration_ticks) > (target_us - margin_us))) {
        return true;
    } else {
        return false;
    }
}