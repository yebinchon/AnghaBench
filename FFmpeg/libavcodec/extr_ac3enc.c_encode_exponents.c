
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_7__ {int* end_freq; int cpl_in_use; scalar_t__** exp; } ;
struct TYPE_5__ {int (* ac3_exponent_min ) (scalar_t__*,int,int) ;} ;
struct TYPE_6__ {int channels; int* start_freq; int num_blocks; int** exp_ref_block; scalar_t__ ref_bap_set; TYPE_1__ ac3dsp; TYPE_3__* blocks; scalar_t__** exp_strategy; int cpl_on; } ;
typedef TYPE_2__ AC3EncodeContext ;
typedef TYPE_3__ AC3Block ;


 int AC3_MAX_COEFS ;
 int CPL_CH ;
 scalar_t__ EXP_REUSE ;
 int encode_exponents_blk_ch (scalar_t__*,int,scalar_t__,int) ;
 int stub1 (scalar_t__*,int,int) ;

__attribute__((used)) static void encode_exponents(AC3EncodeContext *s)
{
    int blk, blk1, ch, cpl;
    uint8_t *exp, *exp_strategy;
    int nb_coefs, num_reuse_blocks;

    for (ch = !s->cpl_on; ch <= s->channels; ch++) {
        exp = s->blocks[0].exp[ch] + s->start_freq[ch];
        exp_strategy = s->exp_strategy[ch];

        cpl = (ch == CPL_CH);
        blk = 0;
        while (blk < s->num_blocks) {
            AC3Block *block = &s->blocks[blk];
            if (cpl && !block->cpl_in_use) {
                exp += AC3_MAX_COEFS;
                blk++;
                continue;
            }
            nb_coefs = block->end_freq[ch] - s->start_freq[ch];
            blk1 = blk + 1;



            s->exp_ref_block[ch][blk] = blk;
            while (blk1 < s->num_blocks && exp_strategy[blk1] == EXP_REUSE) {
                s->exp_ref_block[ch][blk1] = blk;
                blk1++;
            }
            num_reuse_blocks = blk1 - blk - 1;


            s->ac3dsp.ac3_exponent_min(exp-s->start_freq[ch], num_reuse_blocks,
                                       AC3_MAX_COEFS);

            encode_exponents_blk_ch(exp, nb_coefs, exp_strategy[blk], cpl);

            exp += AC3_MAX_COEFS * (num_reuse_blocks + 1);
            blk = blk1;
        }
    }


    s->ref_bap_set = 0;
}
