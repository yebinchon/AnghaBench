
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * mask; int * end_freq; int * band_psd; int * psd; int * exp; int cpl_in_use; } ;
struct TYPE_4__ {int num_blocks; int channels; scalar_t__** exp_strategy; size_t* fast_gain_code; int lfe_channel; int * start_freq; int bit_alloc; TYPE_2__* blocks; } ;
typedef TYPE_1__ AC3EncodeContext ;
typedef TYPE_2__ AC3Block ;


 int DBA_NONE ;
 scalar_t__ EXP_REUSE ;
 int ff_ac3_bit_alloc_calc_mask (int *,int ,int ,int ,int ,int,int ,int ,int *,int *,int *,int ) ;
 int ff_ac3_bit_alloc_calc_psd (int ,int ,int ,int ,int ) ;
 int * ff_ac3_fast_gain_tab ;

__attribute__((used)) static void bit_alloc_masking(AC3EncodeContext *s)
{
    int blk, ch;

    for (blk = 0; blk < s->num_blocks; blk++) {
        AC3Block *block = &s->blocks[blk];
        for (ch = !block->cpl_in_use; ch <= s->channels; ch++) {



            if (s->exp_strategy[ch][blk] != EXP_REUSE) {
                ff_ac3_bit_alloc_calc_psd(block->exp[ch], s->start_freq[ch],
                                          block->end_freq[ch], block->psd[ch],
                                          block->band_psd[ch]);
                ff_ac3_bit_alloc_calc_mask(&s->bit_alloc, block->band_psd[ch],
                                           s->start_freq[ch], block->end_freq[ch],
                                           ff_ac3_fast_gain_tab[s->fast_gain_code[ch]],
                                           ch == s->lfe_channel,
                                           DBA_NONE, 0, ((void*)0), ((void*)0), ((void*)0),
                                           block->mask[ch]);
            }
        }
    }
}
