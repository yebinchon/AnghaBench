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
 int FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

bool FUNC2(uint8_t *MACaddr) {
    int i;
    bool retval;
    for(i = 0; i < 10; i++) {
        retval = FUNC0(MACaddr, 0xFA, 6);
        if(retval)
            break;
        FUNC1(1000000);
    }
    if(!retval) {
        for(i = 0; i < 6; i++)
            MACaddr[i] = 0xFF;
    }
    return retval;
}