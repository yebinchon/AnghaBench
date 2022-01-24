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
 int G729_AGC_FAC1 ; 
 int G729_AGC_FACTOR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 

int16_t FUNC3(int gain_before, int gain_after, int16_t *speech,
                                   int subframe_size, int16_t gain_prev)
{
    int gain; // (3.12)
    int n;
    int exp_before, exp_after;

    if(!gain_after && gain_before)
        return 0;

    if (gain_before) {

        exp_before  = 14 - FUNC1(gain_before);
        gain_before = FUNC2(gain_before, exp_before);

        exp_after  = 14 - FUNC1(gain_after);
        gain_after = FUNC2(gain_after, exp_after);

        if (gain_before < gain_after) {
            gain = (gain_before << 15) / gain_after;
            gain = FUNC2(gain, exp_after - exp_before - 1);
        } else {
            gain = ((gain_before - gain_after) << 14) / gain_after + 0x4000;
            gain = FUNC2(gain, exp_after - exp_before);
        }
        gain = (gain * G729_AGC_FAC1 + 0x4000) >> 15; // gain * (1-0.9875)
    } else
        gain = 0;

    for (n = 0; n < subframe_size; n++) {
        // gain_prev = gain + 0.9875 * gain_prev
        gain_prev = (G729_AGC_FACTOR * gain_prev + 0x4000) >> 15;
        gain_prev = FUNC0(gain + gain_prev);
        speech[n] = FUNC0((speech[n] * gain_prev + 0x2000) >> 14);
    }
    return gain_prev;
}