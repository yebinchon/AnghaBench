#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ pin; scalar_t__ previous; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 TYPE_1__* led_state ; 

void FUNC4(uint8_t pin, uint8_t onoff)
{
    for (int i = 0; i < FUNC0(led_state); i++) {
        if (led_state[i].pin != pin) {
            continue;
        }
        if (onoff == led_state[i].previous) {
            FUNC2(TAG, "led %s is already %s",
                led_state[i].name, (onoff ? "on" : "off"));
            return;
        }
        FUNC3(pin, onoff);
        led_state[i].previous = onoff;
        return;
    }
    FUNC1(TAG, "LED is not found!");
}