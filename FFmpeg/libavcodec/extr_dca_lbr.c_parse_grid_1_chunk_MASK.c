#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nsubbands; int min_mono_subband; int part_stereo_pres; int /*<<< orphan*/  gb; int /*<<< orphan*/ *** part_stereo; int /*<<< orphan*/  avctx; void*** grid_3_avg; int /*<<< orphan*/ ** grid_1_scf; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ LBRChunk ;
typedef  TYPE_2__ DCALbrDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int* ff_dca_grid_1_to_scf ; 
 int* ff_dca_scf_to_grid_1 ; 
 int /*<<< orphan*/  ff_dca_vlc_avg_g3 ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(DCALbrDecoder *s, LBRChunk *chunk, int ch1, int ch2)
{
    int ch, sb, sf, nsubbands;

    if (!chunk->len)
        return 0;

    if (FUNC4(&s->gb, chunk->data, chunk->len) < 0)
        return -1;

    // Scale factors
    nsubbands = ff_dca_scf_to_grid_1[s->nsubbands - 1] + 1;
    for (sb = 2; sb < nsubbands; sb++) {
        if (FUNC5(s, s->grid_1_scf[ch1][sb]) < 0)
            return -1;
        if (ch1 != ch2 && ff_dca_grid_1_to_scf[sb] < s->min_mono_subband
            && FUNC5(s, s->grid_1_scf[ch2][sb]) < 0)
            return -1;
    }

    if (FUNC3(&s->gb) < 1)
        return 0;   // Should not happen, but a sample exists that proves otherwise

    // Average values for third grid
    for (sb = 0; sb < s->nsubbands - 4; sb++) {
        s->grid_3_avg[ch1][sb] = FUNC7(&s->gb, &ff_dca_vlc_avg_g3, 2) - 16;
        if (ch1 != ch2) {
            if (sb + 4 < s->min_mono_subband)
                s->grid_3_avg[ch2][sb] = FUNC7(&s->gb, &ff_dca_vlc_avg_g3, 2) - 16;
            else
                s->grid_3_avg[ch2][sb] = s->grid_3_avg[ch1][sb];
        }
    }

    if (FUNC3(&s->gb) < 0) {
        FUNC0(s->avctx, AV_LOG_ERROR, "First grid chunk too short\n");
        return -1;
    }

    // Stereo image for partial mono mode
    if (ch1 != ch2) {
        int min_v[2];

        if (FUNC1(&s->gb, 8))
            return 0;

        min_v[0] = FUNC2(&s->gb, 4);
        min_v[1] = FUNC2(&s->gb, 4);

        nsubbands = (s->nsubbands - s->min_mono_subband + 3) / 4;
        for (sb = 0; sb < nsubbands; sb++)
            for (ch = ch1; ch <= ch2; ch++)
                for (sf = 1; sf <= 4; sf++)
                    s->part_stereo[ch][sb][sf] = FUNC6(&s->gb, min_v[ch - ch1]);

        if (FUNC3(&s->gb) >= 0)
            s->part_stereo_pres |= 1 << ch1;
    }

    // Low resolution spatial information is not decoded

    return 0;
}