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
struct TYPE_3__ {int step; int predictor; } ;
typedef  TYPE_1__ ADPCMChannelStatus ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int) ; 
 int* ff_adpcm_yamaha_difflookup ; 
 int* ff_adpcm_yamaha_indexscale ; 

__attribute__((used)) static inline uint8_t FUNC4(ADPCMChannelStatus *c,
                                                   int16_t sample)
{
    int nibble, delta;

    if (!c->step) {
        c->predictor = 0;
        c->step      = 127;
    }

    delta = sample - c->predictor;

    nibble = FUNC0(7, FUNC1(delta) * 4 / c->step) + (delta < 0) * 8;

    c->predictor += ((c->step * ff_adpcm_yamaha_difflookup[nibble]) / 8);
    c->predictor = FUNC3(c->predictor);
    c->step = (c->step * ff_adpcm_yamaha_indexscale[nibble]) >> 8;
    c->step = FUNC2(c->step, 127, 24576);

    return nibble;
}