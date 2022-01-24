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
struct TYPE_3__ {int nb_channels; int sub_sampling; int**** tone_level_idx_hi1; int** tone_level_idx_hi2; int*** tone_level_idx_mid; int /*<<< orphan*/ ** quantized_coeffs; } ;
typedef  TYPE_1__ QDM2Context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vlc_tab_tone_level_idx_hi1 ; 
 int /*<<< orphan*/  vlc_tab_tone_level_idx_hi2 ; 
 int /*<<< orphan*/  vlc_tab_tone_level_idx_mid ; 

__attribute__((used)) static void FUNC6(QDM2Context *q, GetBitContext *gb)
{
    int sb, j, k, n, ch;

    for (ch = 0; ch < q->nb_channels; ch++) {
        FUNC3(q->quantized_coeffs[ch][0], gb);

        if (FUNC2(gb) < 16) {
            FUNC4(q->quantized_coeffs[ch][0], 0, 8);
            break;
        }
    }

    n = q->sub_sampling + 1;

    for (sb = 0; sb < n; sb++)
        for (ch = 0; ch < q->nb_channels; ch++)
            for (j = 0; j < 8; j++) {
                if (FUNC2(gb) < 1)
                    break;
                if (FUNC1(gb)) {
                    for (k=0; k < 8; k++) {
                        if (FUNC2(gb) < 16)
                            break;
                        q->tone_level_idx_hi1[ch][sb][j][k] = FUNC5(gb, &vlc_tab_tone_level_idx_hi1, 0, 2);
                    }
                } else {
                    for (k=0; k < 8; k++)
                        q->tone_level_idx_hi1[ch][sb][j][k] = 0;
                }
            }

    n = FUNC0(q->sub_sampling) - 4;

    for (sb = 0; sb < n; sb++)
        for (ch = 0; ch < q->nb_channels; ch++) {
            if (FUNC2(gb) < 16)
                break;
            q->tone_level_idx_hi2[ch][sb] = FUNC5(gb, &vlc_tab_tone_level_idx_hi2, 0, 2);
            if (sb > 19)
                q->tone_level_idx_hi2[ch][sb] -= 16;
            else
                for (j = 0; j < 8; j++)
                    q->tone_level_idx_mid[ch][sb][j] = -16;
        }

    n = FUNC0(q->sub_sampling) - 5;

    for (sb = 0; sb < n; sb++)
        for (ch = 0; ch < q->nb_channels; ch++)
            for (j = 0; j < 8; j++) {
                if (FUNC2(gb) < 16)
                    break;
                q->tone_level_idx_mid[ch][sb][j] = FUNC5(gb, &vlc_tab_tone_level_idx_mid, 0, 2) - 32;
            }
}