
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* prob; int c; } ;
typedef TYPE_2__ VP8Context ;
typedef int VP56RangeCoder ;
struct TYPE_4__ {int**** token; } ;


 int NUM_DCT_TOKENS ;
 scalar_t__ vp56_rac_get_prob_branchy (int *,int ) ;
 size_t** vp8_coeff_band_indexes ;
 int vp8_rac_get_uint (int *,int) ;
 int **** vp8_token_update_probs ;

__attribute__((used)) static void vp78_update_probability_tables(VP8Context *s)
{
    VP56RangeCoder *c = &s->c;
    int i, j, k, l, m;

    for (i = 0; i < 4; i++)
        for (j = 0; j < 8; j++)
            for (k = 0; k < 3; k++)
                for (l = 0; l < NUM_DCT_TOKENS-1; l++)
                    if (vp56_rac_get_prob_branchy(c, vp8_token_update_probs[i][j][k][l])) {
                        int prob = vp8_rac_get_uint(c, 8);
                        for (m = 0; vp8_coeff_band_indexes[j][m] >= 0; m++)
                            s->prob->token[i][vp8_coeff_band_indexes[j][m]][k][l] = prob;
                    }
}
