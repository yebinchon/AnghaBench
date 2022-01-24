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
 double FUNC0 (int,double,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

double FUNC2(uint8_t chan, double freq)
{
    if(chan > 15) {
        return 0;
    }
    if(!freq) {
        FUNC1(chan, 0);
        return 0;
    }
    double res_freq = FUNC0(chan, freq, 10);
    FUNC1(chan, 0x1FF);
    return res_freq;
}