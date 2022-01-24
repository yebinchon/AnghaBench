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
 int HIGH ; 
 int LOW ; 
 int LSBFIRST ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

void FUNC1(uint8_t dataPin, uint8_t clockPin, uint8_t bitOrder, uint8_t val) {
    uint8_t i;

    for(i = 0; i < 8; i++) {
        if(bitOrder == LSBFIRST)
            FUNC0(dataPin, !!(val & (1 << i)));
        else
            FUNC0(dataPin, !!(val & (1 << (7 - i))));

        FUNC0(clockPin, HIGH);
        FUNC0(clockPin, LOW);
    }
}