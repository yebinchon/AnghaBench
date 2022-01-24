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
 int /*<<< orphan*/  LOW ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 double FUNC1 (int,double,int) ; 

double FUNC2(uint8_t chan, double freq, uint8_t bit_num)
{
    if(chan > 15) {
        return 0;
    }
    double res_freq = FUNC1(chan, freq, bit_num);
    FUNC0(chan, LOW);
    return res_freq;
}