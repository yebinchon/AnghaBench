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
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 size_t* ff_adpcm_index_table ; 
 int* ff_adpcm_step_table ; 
 int* ff_adpcm_yamaha_difflookup ; 

__attribute__((used)) static inline uint8_t FUNC4(ADPCMChannelStatus *c,
                                                int16_t sample)
{
    int delta  = sample - c->prev_sample;
    int nibble = FUNC0(7, FUNC1(delta) * 4 /
                       ff_adpcm_step_table[c->step_index]) + (delta < 0) * 8;
    c->prev_sample += ((ff_adpcm_step_table[c->step_index] *
                        ff_adpcm_yamaha_difflookup[nibble]) / 8);
    c->prev_sample = FUNC3(c->prev_sample);
    c->step_index  = FUNC2(c->step_index + ff_adpcm_index_table[nibble], 0, 88);
    return nibble;
}