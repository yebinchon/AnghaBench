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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  TAG ; 
 int TOUCH_PAD_MAX ; 
 int* s_pad_init_val ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    uint16_t touch_value;
    for (int i = 0; i < TOUCH_PAD_MAX; i++) {
        //read filtered value
        FUNC2(i, &touch_value);
        s_pad_init_val[i] = touch_value;
        FUNC1(TAG, "test init: touch pad [%d] val is %d", i, touch_value);
        //set interrupt threshold.
        FUNC0(FUNC3(i, touch_value * 2 / 3));

    }
}