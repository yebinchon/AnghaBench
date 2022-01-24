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
typedef  int uint16_t ;

/* Variables and functions */
 int FanCapture ; 
 int /*<<< orphan*/  FanLastIrq ; 
 int /*<<< orphan*/  LocalTime ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  TIM3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIM_IT_CC1 ; 
 int /*<<< orphan*/  captureCounter ; 
 void** captures ; 

void FUNC3(void) {
    static uint16_t CaptureNumber = 0;
    static uint16_t inval1, inval2;
    if(FUNC2(TIM3, TIM_IT_CC1) == SET) {
        captures[captureCounter++ % 32] = FUNC1(TIM3);
        // clear the CC interrupt pending bit
        FUNC0(TIM3, TIM_IT_CC1);
        if(CaptureNumber == 0) {
            inval1 = FUNC1(TIM3);
            CaptureNumber = 1;
        }
        else if(CaptureNumber == 1) {
            inval2 = FUNC1(TIM3);
            if(inval2 < inval1)
                FanCapture = (0xFFFF - inval1) - inval2;
            else
                FanCapture = inval2 - inval1;
            CaptureNumber = 0;
        }
        FanLastIrq = LocalTime;
    }
}