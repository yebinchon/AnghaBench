#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int int16_t ;
struct TYPE_3__ {int prev_sample; size_t step_index; } ;
typedef  TYPE_1__ ADPCMChannelStatus ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 size_t* ff_adpcm_index_table ; 
 int* ff_adpcm_step_table ; 

__attribute__((used)) static inline uint8_t FUNC3(ADPCMChannelStatus *c,
                                                   int16_t sample)
{
    int delta  = sample - c->prev_sample;
    int diff, step = ff_adpcm_step_table[c->step_index];
    int nibble = 8*(delta < 0);

    delta= FUNC0(delta);
    diff = delta + (step >> 3);

    if (delta >= step) {
        nibble |= 4;
        delta  -= step;
    }
    step >>= 1;
    if (delta >= step) {
        nibble |= 2;
        delta  -= step;
    }
    step >>= 1;
    if (delta >= step) {
        nibble |= 1;
        delta  -= step;
    }
    diff -= delta;

    if (nibble & 8)
        c->prev_sample -= diff;
    else
        c->prev_sample += diff;

    c->prev_sample = FUNC2(c->prev_sample);
    c->step_index  = FUNC1(c->step_index + ff_adpcm_index_table[nibble], 0, 88);

    return nibble;
}