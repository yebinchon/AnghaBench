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
 float FUNC0 (double,long) ; 

__attribute__((used)) static float FUNC1(unsigned val)
{
    double mant = val & 0x1fffff;
    long exp    = (val & 0x7fe00000L) >> 21;
    if (val & 0x80000000)
        mant = -mant;
    return FUNC0(mant, exp - 20 - 768);
}