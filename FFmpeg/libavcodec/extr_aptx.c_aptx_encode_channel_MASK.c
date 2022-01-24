#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_8__ {TYPE_2__* invert_quantize; int /*<<< orphan*/ * dither; int /*<<< orphan*/ * quantize; TYPE_1__* prediction; int /*<<< orphan*/  qmf; } ;
struct TYPE_7__ {int /*<<< orphan*/  quantization_factor; } ;
struct TYPE_6__ {scalar_t__ predicted_sample; } ;
typedef  TYPE_3__ Channel ;

/* Variables and functions */
 int NB_SUBBANDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/ ** tables ; 

__attribute__((used)) static void FUNC4(Channel *channel, int32_t samples[4], int hd)
{
    int32_t subband_samples[4];
    int subband;
    FUNC1(&channel->qmf, samples, subband_samples);
    FUNC0(channel);
    for (subband = 0; subband < NB_SUBBANDS; subband++) {
        int32_t diff = FUNC3(subband_samples[subband] - channel->prediction[subband].predicted_sample, 23);
        FUNC2(&channel->quantize[subband], diff,
                                 channel->dither[subband],
                                 channel->invert_quantize[subband].quantization_factor,
                                 &tables[hd][subband]);
    }
}