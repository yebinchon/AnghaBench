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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ RESET_REASON ;

/* Variables and functions */
 scalar_t__ POWERON_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TIMER_0 ; 
 int /*<<< orphan*/  TIMER_GROUP_0 ; 
 int TIMER_INTR_T0 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(void)
{
    RESET_REASON rst_res = FUNC4(0);
    if(rst_res != POWERON_RESET){
        FUNC3("Not power on reset\n");
    }
    FUNC1(POWERON_RESET, rst_res);
    static uint8_t loop_cnt = 0;
    FUNC6();
    //Start timer
    FUNC7(TIMER_GROUP_0, TIMER_0);
    //Waiting for timer_group to generate an interrupt
    while( !(FUNC5(TIMER_GROUP_0) & TIMER_INTR_T0) &&
            loop_cnt++ < 100) {
        FUNC8(200);
    }
    //TIMERG0.int_raw.t0 == 1 means an interruption has occurred
    FUNC0(FUNC5(TIMER_GROUP_0) & TIMER_INTR_T0);
    FUNC2();
}