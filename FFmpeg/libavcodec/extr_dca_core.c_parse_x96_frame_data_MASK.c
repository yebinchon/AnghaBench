#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_6__ {int nsubframes; int x96_nchannels; int* nsubbands; int* joint_intensity_index; int** x96_subband_samples; int x96_subband_start; int npcmblocks; } ;
typedef  TYPE_1__ DCACoreDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int DCA_ADPCM_COEFFS ; 
 int DCA_SUBBANDS_X96 ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,int,int) ; 
 int FUNC5 (TYPE_1__*,int,int,int*) ; 
 int FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7(DCACoreDecoder *s, int exss, int xch_base)
{
    int sf, ch, ret, band, sub_pos;

    if ((ret = FUNC4(s, exss, xch_base)) < 0)
        return ret;

    for (sf = 0, sub_pos = 0; sf < s->nsubframes; sf++) {
        if ((ret = FUNC6(s, xch_base)) < 0)
            return ret;
        if ((ret = FUNC5(s, sf, xch_base, &sub_pos)) < 0)
            return ret;
    }

    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        // Determine number of active subbands for this channel
        int nsubbands = s->nsubbands[ch];
        if (s->joint_intensity_index[ch])
            nsubbands = FUNC1(nsubbands, s->nsubbands[s->joint_intensity_index[ch] - 1]);

        // Update history for ADPCM and clear inactive subbands
        for (band = 0; band < DCA_SUBBANDS_X96; band++) {
            int32_t *samples = s->x96_subband_samples[ch][band] - DCA_ADPCM_COEFFS;
            if (band >= s->x96_subband_start && band < nsubbands)
                FUNC0(samples, samples + s->npcmblocks);
            else
                FUNC3(samples, 0, (DCA_ADPCM_COEFFS + s->npcmblocks) * sizeof(int32_t));
        }
    }

    FUNC2();

    return 0;
}