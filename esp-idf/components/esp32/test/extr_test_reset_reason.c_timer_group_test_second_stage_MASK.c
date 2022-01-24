#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ t0; } ;
struct TYPE_4__ {TYPE_1__ int_raw; } ;
typedef  scalar_t__ RESET_REASON ;

/* Variables and functions */
 scalar_t__ SW_CPU_RESET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 TYPE_2__ TIMERG0 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
    RESET_REASON rst_res = FUNC2(0);
    if(rst_res != SW_CPU_RESET){
        FUNC1("Not software reset\n");
    }
    FUNC0(SW_CPU_RESET, rst_res);
    FUNC3();
    //After the timer_group is initialized, TIMERG0.int_raw.t0 should be cleared.
    FUNC0(0, TIMERG0.int_raw.t0);
}