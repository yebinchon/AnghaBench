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
typedef  int int16_t ;

/* Variables and functions */
 int FUNC0 (float) ; 
 float FUNC1 (float,float) ; 

__attribute__((used)) static void FUNC2(int16_t* bands, int start, int stop, int num_bands)
{
    int k, previous, present;
    float base, prod;

    base = FUNC1((float)stop / start, 1.0f / num_bands);
    prod = start;
    previous = start;

    for (k = 0; k < num_bands-1; k++) {
        prod *= base;
        present  = FUNC0(prod);
        bands[k] = present - previous;
        previous = present;
    }
    bands[num_bands-1] = stop - previous;
}