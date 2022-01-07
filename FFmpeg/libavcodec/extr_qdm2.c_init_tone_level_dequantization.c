
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_channels; int sub_sampling; int**** tone_level_idx_hi1; int** tone_level_idx_hi2; int*** tone_level_idx_mid; int ** quantized_coeffs; } ;
typedef TYPE_1__ QDM2Context ;
typedef int GetBitContext ;


 int QDM2_SB_USED (int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_left (int *) ;
 int init_quantized_coeffs_elem0 (int ,int *) ;
 int memset (int ,int ,int) ;
 int qdm2_get_vlc (int *,int *,int ,int) ;
 int vlc_tab_tone_level_idx_hi1 ;
 int vlc_tab_tone_level_idx_hi2 ;
 int vlc_tab_tone_level_idx_mid ;

__attribute__((used)) static void init_tone_level_dequantization(QDM2Context *q, GetBitContext *gb)
{
    int sb, j, k, n, ch;

    for (ch = 0; ch < q->nb_channels; ch++) {
        init_quantized_coeffs_elem0(q->quantized_coeffs[ch][0], gb);

        if (get_bits_left(gb) < 16) {
            memset(q->quantized_coeffs[ch][0], 0, 8);
            break;
        }
    }

    n = q->sub_sampling + 1;

    for (sb = 0; sb < n; sb++)
        for (ch = 0; ch < q->nb_channels; ch++)
            for (j = 0; j < 8; j++) {
                if (get_bits_left(gb) < 1)
                    break;
                if (get_bits1(gb)) {
                    for (k=0; k < 8; k++) {
                        if (get_bits_left(gb) < 16)
                            break;
                        q->tone_level_idx_hi1[ch][sb][j][k] = qdm2_get_vlc(gb, &vlc_tab_tone_level_idx_hi1, 0, 2);
                    }
                } else {
                    for (k=0; k < 8; k++)
                        q->tone_level_idx_hi1[ch][sb][j][k] = 0;
                }
            }

    n = QDM2_SB_USED(q->sub_sampling) - 4;

    for (sb = 0; sb < n; sb++)
        for (ch = 0; ch < q->nb_channels; ch++) {
            if (get_bits_left(gb) < 16)
                break;
            q->tone_level_idx_hi2[ch][sb] = qdm2_get_vlc(gb, &vlc_tab_tone_level_idx_hi2, 0, 2);
            if (sb > 19)
                q->tone_level_idx_hi2[ch][sb] -= 16;
            else
                for (j = 0; j < 8; j++)
                    q->tone_level_idx_mid[ch][sb][j] = -16;
        }

    n = QDM2_SB_USED(q->sub_sampling) - 5;

    for (sb = 0; sb < n; sb++)
        for (ch = 0; ch < q->nb_channels; ch++)
            for (j = 0; j < 8; j++) {
                if (get_bits_left(gb) < 16)
                    break;
                q->tone_level_idx_mid[ch][sb][j] = qdm2_get_vlc(gb, &vlc_tab_tone_level_idx_mid, 0, 2) - 32;
            }
}
