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
typedef  size_t uint8_t ;
typedef  scalar_t__ int16_t ;
struct TYPE_3__ {int step; scalar_t__ predictor; } ;
typedef  TYPE_1__ ADPCMChannelStatus ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int* ff_adpcm_yamaha_difflookup ; 
 int* ff_adpcm_yamaha_indexscale ; 

__attribute__((used)) static inline int16_t FUNC2(ADPCMChannelStatus *c, uint8_t nibble)
{
    if(!c->step) {
        c->predictor = 0;
        c->step = 127;
    }

    c->predictor += (c->step * ff_adpcm_yamaha_difflookup[nibble]) / 8;
    c->predictor = FUNC1(c->predictor);
    c->step = (c->step * ff_adpcm_yamaha_indexscale[nibble]) >> 8;
    c->step = FUNC0(c->step, 127, 24576);
    return c->predictor;
}