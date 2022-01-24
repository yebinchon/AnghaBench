#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  table; } ;
struct TYPE_5__ {float*** time_samples; unsigned int* ch_pres; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ DCALbrDecoder ;

/* Variables and functions */
 int DCA_LBR_TIME_SAMPLES ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 float* ff_dca_rsd_level_16 ; 
 float* ff_dca_rsd_level_2a ; 
 float* ff_dca_rsd_level_2b ; 
 float* ff_dca_rsd_level_3 ; 
 float* ff_dca_rsd_level_5 ; 
 float* ff_dca_rsd_level_8 ; 
 size_t** ff_dca_rsd_pack_3_in_7 ; 
 int* ff_dca_rsd_pack_5_in_8 ; 
 TYPE_4__ ff_dca_vlc_rsd ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 float FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC8(DCALbrDecoder *s, int ch, int sb, int quant_level, int flag)
{
    float *samples = s->time_samples[ch][sb];
    int i, j, code, nblocks, coding_method;

    if (FUNC2(&s->gb, 20))
        return; // Too few bits left

    coding_method = FUNC4(&s->gb);

    switch (quant_level) {
    case 1:
        nblocks = FUNC0(FUNC5(&s->gb) / 8, DCA_LBR_TIME_SAMPLES / 8);
        for (i = 0; i < nblocks; i++, samples += 8) {
            code = FUNC3(&s->gb, 8);
            for (j = 0; j < 8; j++)
                samples[j] = ff_dca_rsd_level_2a[(code >> j) & 1];
        }
        i = nblocks * 8;
        break;

    case 2:
        if (coding_method) {
            for (i = 0; i < DCA_LBR_TIME_SAMPLES && FUNC5(&s->gb) >= 2; i++) {
                if (FUNC4(&s->gb))
                    samples[i] = ff_dca_rsd_level_2b[FUNC4(&s->gb)];
                else
                    samples[i] = 0;
            }
        } else {
            nblocks = FUNC0(FUNC5(&s->gb) / 8, (DCA_LBR_TIME_SAMPLES + 4) / 5);
            for (i = 0; i < nblocks; i++, samples += 5) {
                code = ff_dca_rsd_pack_5_in_8[FUNC3(&s->gb, 8)];
                for (j = 0; j < 5; j++)
                    samples[j] = ff_dca_rsd_level_3[(code >> j * 2) & 3];
            }
            i = nblocks * 5;
        }
        break;

    case 3:
        nblocks = FUNC0(FUNC5(&s->gb) / 7, (DCA_LBR_TIME_SAMPLES + 2) / 3);
        for (i = 0; i < nblocks; i++, samples += 3) {
            code = FUNC3(&s->gb, 7);
            for (j = 0; j < 3; j++)
                samples[j] = ff_dca_rsd_level_5[ff_dca_rsd_pack_3_in_7[code][j]];
        }
        i = nblocks * 3;
        break;

    case 4:
        for (i = 0; i < DCA_LBR_TIME_SAMPLES && FUNC5(&s->gb) >= 6; i++)
            samples[i] = ff_dca_rsd_level_8[FUNC6(&s->gb, ff_dca_vlc_rsd.table, 6, 1)];
        break;

    case 5:
        nblocks = FUNC0(FUNC5(&s->gb) / 4, DCA_LBR_TIME_SAMPLES);
        for (i = 0; i < nblocks; i++)
            samples[i] = ff_dca_rsd_level_16[FUNC3(&s->gb, 4)];
        break;

    default:
        FUNC1(0);
    }

    if (flag && FUNC5(&s->gb) < 20)
        return; // Skip incomplete mono subband

    for (; i < DCA_LBR_TIME_SAMPLES; i++)
        s->time_samples[ch][sb][i] = FUNC7(s, sb);

    s->ch_pres[ch] |= 1U << sb;
}