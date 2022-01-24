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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(void){
    const uint8_t pin_32 = 32;
    const uint8_t pin_33 = 33;
    const uint8_t mask_32 = (1 << (pin_32 - 32));
    const uint8_t mask_33 = (1 << (pin_33 - 32));

    FUNC3(false);

    FUNC2(pin_32);
    FUNC2(pin_33);
    FUNC1(0, mask_32 | mask_33, mask_32 | mask_33, 0);
    FUNC0(500000);
    FUNC1(0, 0, 0, mask_32 | mask_33); // disable pins
}