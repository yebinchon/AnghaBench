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
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_3__ {size_t step; int /*<<< orphan*/  predictor; } ;
typedef  TYPE_1__ ADPCMChannelStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t,int) ; 
 scalar_t__* ff_adpcm_index_table ; 
 scalar_t__** ff_adpcm_mtaf_stepsize ; 

__attribute__((used)) static inline int16_t FUNC2(ADPCMChannelStatus *c, uint8_t nibble)
{
    c->predictor += ff_adpcm_mtaf_stepsize[c->step][nibble];
    c->predictor = FUNC0(c->predictor);
    c->step += ff_adpcm_index_table[nibble];
    c->step = FUNC1(c->step, 5);
    return c->predictor;
}