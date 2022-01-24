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
 int /*<<< orphan*/  HIGH ; 
 int /*<<< orphan*/  LOW ; 
 int LSBFIRST ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

uint8_t FUNC2(uint8_t dataPin, uint8_t clockPin, uint8_t bitOrder) {
    uint8_t value = 0;
    uint8_t i;

    for(i = 0; i < 8; ++i) {
        //digitalWrite(clockPin, HIGH);
        if(bitOrder == LSBFIRST)
            value |= FUNC0(dataPin) << i;
        else
            value |= FUNC0(dataPin) << (7 - i);
        FUNC1(clockPin, HIGH);
        FUNC1(clockPin, LOW);
    }
    return value;
}