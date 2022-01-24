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
struct TYPE_4__ {int group_order; int group_size; int nb_channels; int frequency_range; scalar_t__* fft_level_exp; scalar_t__ superblocktype_2_3; } ;
typedef  TYPE_1__ QDM2Context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fft_level_exp_alt_vlc ; 
 int /*<<< orphan*/  fft_level_exp_vlc ; 
 size_t* fft_level_index_table ; 
 int /*<<< orphan*/  fft_stereo_exp_vlc ; 
 int /*<<< orphan*/  fft_stereo_phase_vlc ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * vlc_tab_fft_tone_offset ; 

__attribute__((used)) static void FUNC7(QDM2Context *q, int duration,
                                  GetBitContext *gb, int b)
{
    int channel, stereo, phase, exp;
    int local_int_4, local_int_8, stereo_phase, local_int_10;
    int local_int_14, stereo_exp, local_int_20, local_int_28;
    int n, offset;

    local_int_4  = 0;
    local_int_28 = 0;
    local_int_20 = 2;
    local_int_8  = (4 - duration);
    local_int_10 = 1 << (q->group_order - duration - 1);
    offset       = 1;

    while (FUNC4(gb)>0) {
        if (q->superblocktype_2_3) {
            while ((n = FUNC6(gb, &vlc_tab_fft_tone_offset[local_int_8], 1, 2)) < 2) {
                if (FUNC4(gb)<0) {
                    if(local_int_4 < q->group_size)
                        FUNC1(NULL, AV_LOG_ERROR, "overread in qdm2_fft_decode_tones()\n");
                    return;
                }
                offset = 1;
                if (n == 0) {
                    local_int_4  += local_int_10;
                    local_int_28 += (1 << local_int_8);
                } else {
                    local_int_4  += 8 * local_int_10;
                    local_int_28 += (8 << local_int_8);
                }
            }
            offset += (n - 2);
        } else {
            if (local_int_10 <= 2) {
                FUNC1(NULL, AV_LOG_ERROR, "qdm2_fft_decode_tones() stuck\n");
                return;
            }
            offset += FUNC6(gb, &vlc_tab_fft_tone_offset[local_int_8], 1, 2);
            while (offset >= (local_int_10 - 1)) {
                offset       += (1 - (local_int_10 - 1));
                local_int_4  += local_int_10;
                local_int_28 += (1 << local_int_8);
            }
        }

        if (local_int_4 >= q->group_size)
            return;

        local_int_14 = (offset >> local_int_8);
        if (local_int_14 >= FUNC0(fft_level_index_table))
            return;

        if (q->nb_channels > 1) {
            channel = FUNC3(gb);
            stereo  = FUNC3(gb);
        } else {
            channel = 0;
            stereo  = 0;
        }

        exp  = FUNC6(gb, (b ? &fft_level_exp_vlc : &fft_level_exp_alt_vlc), 0, 2);
        exp += q->fft_level_exp[fft_level_index_table[local_int_14]];
        exp  = (exp < 0) ? 0 : exp;

        phase        = FUNC2(gb, 3);
        stereo_exp   = 0;
        stereo_phase = 0;

        if (stereo) {
            stereo_exp   = (exp - FUNC6(gb, &fft_stereo_exp_vlc, 0, 1));
            stereo_phase = (phase - FUNC6(gb, &fft_stereo_phase_vlc, 0, 1));
            if (stereo_phase < 0)
                stereo_phase += 8;
        }

        if (q->frequency_range > (local_int_14 + 1)) {
            int sub_packet = (local_int_20 + local_int_28);

            FUNC5(q, sub_packet, offset, duration,
                                      channel, exp, phase);
            if (stereo)
                FUNC5(q, sub_packet, offset, duration,
                                          1 - channel,
                                          stereo_exp, stereo_phase);
        }
        offset++;
    }
}