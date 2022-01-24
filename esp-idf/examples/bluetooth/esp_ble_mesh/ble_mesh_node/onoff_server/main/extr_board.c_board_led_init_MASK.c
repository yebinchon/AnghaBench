#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  previous; int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* led_state ; 

__attribute__((used)) static void FUNC3(void)
{
    for (int i = 0; i < 3; i++) {
        FUNC0(led_state[i].pin);
        FUNC1(led_state[i].pin, GPIO_MODE_OUTPUT);
        FUNC2(led_state[i].pin, LED_OFF);
        led_state[i].previous = LED_OFF;
    }
}