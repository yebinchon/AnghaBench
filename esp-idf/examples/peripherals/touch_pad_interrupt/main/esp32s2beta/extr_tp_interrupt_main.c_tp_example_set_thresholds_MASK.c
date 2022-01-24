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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  TAG ; 
 int TOUCH_BUTTON_NUM ; 
 int /*<<< orphan*/ * button ; 
 int* button_threshold ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void)
{
    uint32_t touch_value;
    for (int i = 0; i < TOUCH_BUTTON_NUM; i++) {
        //read baseline value
        FUNC1(button[i], &touch_value);
        //set interrupt threshold.
        FUNC2(button[i], touch_value * button_threshold[i]);
        FUNC0(TAG, "test init: touch pad [%d] base %d, thresh %d", \
                 button[i], touch_value, (uint32_t)(touch_value * button_threshold[i]));
    }
}