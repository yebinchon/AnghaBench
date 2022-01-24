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
typedef  int int64_t ;
typedef  int int16_t ;

/* Variables and functions */
 int CONST_LN2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(int16_t* bands, int start, int stop, int num_bands)
{
    int k, previous, present;
    int base, prod, nz = 0;

    base = (stop << 23) / start;
    while (base < 0x40000000){
        base <<= 1;
        nz++;
    }
    base = FUNC1(base - 0x80000000);
    base = (((base + 0x80) >> 8) + (8-nz)*CONST_LN2) / num_bands;
    base = FUNC0(base);

    previous = start;
    prod = start << 23;

    for (k = 0; k < num_bands-1; k++) {
        prod = (int)(((int64_t)prod * base + 0x400000) >> 23);
        present = (prod + 0x400000) >> 23;
        bands[k] = present - previous;
        previous = present;
    }
    bands[num_bands-1] = stop - previous;
}