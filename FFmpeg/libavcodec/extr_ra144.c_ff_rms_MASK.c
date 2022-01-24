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

/* Variables and functions */
 int LPC_ORDER ; 
 int FUNC0 (unsigned int) ; 

unsigned int FUNC1(const int *data)
{
    int i;
    unsigned int res = 0x10000;
    int b = LPC_ORDER;

    for (i = 0; i < LPC_ORDER; i++) {
        res = (((0x1000000 - data[i]*data[i]) >> 12) * res) >> 12;

        if (res == 0)
            return 0;

        while (res <= 0x3fff) {
            b++;
            res <<= 2;
        }
    }

    return FUNC0(res) >> b;
}