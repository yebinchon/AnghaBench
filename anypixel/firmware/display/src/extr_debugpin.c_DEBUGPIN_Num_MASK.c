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
typedef  int uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  pin; int /*<<< orphan*/  GPIOx; } ;

/* Variables and functions */
 int DEBUGPIN_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* pins_debug ; 

void FUNC2(uint16_t state) {
    int i;
    for(i=0; i < DEBUGPIN_NUM; i++) {
        if(state & 1)
            FUNC1(pins_debug[i].GPIOx, pins_debug[i].pin);
        else
            FUNC0(pins_debug[i].GPIOx, pins_debug[i].pin);
        state >>= 1;
    }
}