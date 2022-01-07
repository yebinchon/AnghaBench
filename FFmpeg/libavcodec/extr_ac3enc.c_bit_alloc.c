
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int * end_freq; int * psd; int * mask; int cpl_in_use; } ;
struct TYPE_9__ {int floor; } ;
struct TYPE_8__ {int (* bit_alloc_calc_bap ) (int ,int ,int ,int ,int,int ,int ,int ) ;} ;
struct TYPE_10__ {int num_blocks; int channels; scalar_t__** exp_strategy; int ** ref_bap; TYPE_2__ bit_alloc; int * start_freq; TYPE_1__ ac3dsp; TYPE_4__* blocks; } ;
typedef TYPE_3__ AC3EncodeContext ;
typedef TYPE_4__ AC3Block ;


 scalar_t__ EXP_REUSE ;
 int count_mantissa_bits (TYPE_3__*) ;
 int ff_ac3_bap_tab ;
 int reset_block_bap (TYPE_3__*) ;
 int stub1 (int ,int ,int ,int ,int,int ,int ,int ) ;

__attribute__((used)) static int bit_alloc(AC3EncodeContext *s, int snr_offset)
{
    int blk, ch;

    snr_offset = (snr_offset - 240) * 4;

    reset_block_bap(s);
    for (blk = 0; blk < s->num_blocks; blk++) {
        AC3Block *block = &s->blocks[blk];

        for (ch = !block->cpl_in_use; ch <= s->channels; ch++) {




            if (s->exp_strategy[ch][blk] != EXP_REUSE) {
                s->ac3dsp.bit_alloc_calc_bap(block->mask[ch], block->psd[ch],
                                             s->start_freq[ch], block->end_freq[ch],
                                             snr_offset, s->bit_alloc.floor,
                                             ff_ac3_bap_tab, s->ref_bap[ch][blk]);
            }
        }
    }
    return count_mantissa_bits(s);
}
