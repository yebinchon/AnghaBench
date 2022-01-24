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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  PIN_HIGH ; 
 int /*<<< orphan*/  PIN_LOW ; 
 int /*<<< orphan*/  T_HDR_LOW ; 
 int /*<<< orphan*/  T_STBY ; 
 int UNIO_READ ; 
 int UNIO_START ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(uint8_t *buf, uint16_t addr, uint16_t len) {
    int i;
    bool retval = true;
    // send start header
    PIN_HIGH;
    FUNC2(T_STBY);
    PIN_LOW;
    FUNC2(T_HDR_LOW);
    FUNC1(UNIO_START, true);
    // send command header
    retval &= FUNC1(0xA0, true);
    retval &= FUNC1(UNIO_READ, true);
    retval &= FUNC1(addr >> 8, true);
    retval &= FUNC1(addr & 0xFF, true);
    // recv payload
    for(i = 0; i < len; i++) {
        retval &= FUNC0( buf+i, i != (len-1) );
    }
    return retval;
}