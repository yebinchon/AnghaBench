#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {int npcmblocks; unsigned int subband_size; int /*<<< orphan*/  predictor_history; scalar_t__ subband_buffer; scalar_t__ lfe_samples; scalar_t__** subband_samples; } ;
typedef  TYPE_1__ DCACoreDecoder ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DCA_ADPCM_COEFFS ; 
 int DCA_CHANNELS ; 
 int DCA_LFE_HISTORY ; 
 int DCA_SUBBANDS ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(DCACoreDecoder *s)
{
    int nchsamples = DCA_ADPCM_COEFFS + s->npcmblocks;
    int nframesamples = nchsamples * DCA_CHANNELS * DCA_SUBBANDS;
    int nlfesamples = DCA_LFE_HISTORY + s->npcmblocks / 2;
    unsigned int size = s->subband_size;
    int ch, band;

    // Reallocate subband sample buffer
    FUNC1(&s->subband_buffer, &s->subband_size,
                    (nframesamples + nlfesamples) * sizeof(int32_t));
    if (!s->subband_buffer)
        return FUNC0(ENOMEM);

    if (size != s->subband_size) {
        for (ch = 0; ch < DCA_CHANNELS; ch++)
            for (band = 0; band < DCA_SUBBANDS; band++)
                s->subband_samples[ch][band] = s->subband_buffer +
                    (ch * DCA_SUBBANDS + band) * nchsamples + DCA_ADPCM_COEFFS;
        s->lfe_samples = s->subband_buffer + nframesamples;
    }

    if (!s->predictor_history)
        FUNC2(s);

    return 0;
}