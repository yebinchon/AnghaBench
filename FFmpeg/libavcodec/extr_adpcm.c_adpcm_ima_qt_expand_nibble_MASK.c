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
struct TYPE_3__ {size_t step_index; int predictor; } ;
typedef  TYPE_1__ ADPCMChannelStatus ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int* ff_adpcm_index_table ; 
 int* ff_adpcm_step_table ; 

__attribute__((used)) static inline int FUNC2(ADPCMChannelStatus *c, int nibble, int shift)
{
    int step_index;
    int predictor;
    int diff, step;

    step = ff_adpcm_step_table[c->step_index];
    step_index = c->step_index + ff_adpcm_index_table[nibble];
    step_index = FUNC0(step_index, 0, 88);

    diff = step >> 3;
    if (nibble & 4) diff += step;
    if (nibble & 2) diff += step >> 1;
    if (nibble & 1) diff += step >> 2;

    if (nibble & 8)
        predictor = c->predictor - diff;
    else
        predictor = c->predictor + diff;

    c->predictor = FUNC1(predictor);
    c->step_index = step_index;

    return c->predictor;
}