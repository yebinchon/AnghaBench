
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t coeff_per_sb_select; int nb_channels; int*** quantized_coeffs; int sub_sampling; } ;
typedef TYPE_1__ QDM2Context ;


 int QDM2_SB_USED (int ) ;
 int** coeff_per_sb_for_avg ;

__attribute__((used)) static void average_quantized_coeffs(QDM2Context *q)
{
    int i, j, n, ch, sum;

    n = coeff_per_sb_for_avg[q->coeff_per_sb_select][QDM2_SB_USED(q->sub_sampling) - 1] + 1;

    for (ch = 0; ch < q->nb_channels; ch++)
        for (i = 0; i < n; i++) {
            sum = 0;

            for (j = 0; j < 8; j++)
                sum += q->quantized_coeffs[ch][i][j];

            sum /= 8;
            if (sum > 0)
                sum--;

            for (j = 0; j < 8; j++)
                q->quantized_coeffs[ch][i][j] = sum;
        }
}
