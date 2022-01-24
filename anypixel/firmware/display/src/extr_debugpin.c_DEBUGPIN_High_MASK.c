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
typedef  size_t uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  pin; int /*<<< orphan*/  GPIOx; } ;

/* Variables and functions */
 size_t DEBUGPIN_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* pins_debug ; 

inline void FUNC2(uint8_t index) {
    FUNC1(index < DEBUGPIN_NUM);
    FUNC0(pins_debug[index].GPIOx, pins_debug[index].pin);
}