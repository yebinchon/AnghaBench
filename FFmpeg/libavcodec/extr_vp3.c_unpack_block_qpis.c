
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int table; } ;
struct TYPE_7__ {int total_num_coded_frags; int nqps; size_t** coded_fragment_list; TYPE_2__* all_fragments; TYPE_1__ superblock_run_length_vlc; } ;
typedef TYPE_3__ Vp3DecodeContext ;
struct TYPE_6__ {int qpi; } ;
typedef int GetBitContext ;


 int MAXIMUM_LONG_BIT_RUN ;
 scalar_t__ get_bits (int *,int) ;
 int get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int get_vlc2 (int *,int ,int,int) ;

__attribute__((used)) static int unpack_block_qpis(Vp3DecodeContext *s, GetBitContext *gb)
{
    int qpi, i, j, bit, run_length, blocks_decoded, num_blocks_at_qpi;
    int num_blocks = s->total_num_coded_frags;

    for (qpi = 0; qpi < s->nqps - 1 && num_blocks > 0; qpi++) {
        i = blocks_decoded = num_blocks_at_qpi = 0;

        bit = get_bits1(gb) ^ 1;
        run_length = 0;

        do {
            if (run_length == MAXIMUM_LONG_BIT_RUN)
                bit = get_bits1(gb);
            else
                bit ^= 1;

            run_length = get_vlc2(gb, s->superblock_run_length_vlc.table, 6, 2) + 1;
            if (run_length == 34)
                run_length += get_bits(gb, 12);
            blocks_decoded += run_length;

            if (!bit)
                num_blocks_at_qpi += run_length;

            for (j = 0; j < run_length; i++) {
                if (i >= s->total_num_coded_frags)
                    return -1;

                if (s->all_fragments[s->coded_fragment_list[0][i]].qpi == qpi) {
                    s->all_fragments[s->coded_fragment_list[0][i]].qpi += bit;
                    j++;
                }
            }
        } while (blocks_decoded < num_blocks && get_bits_left(gb) > 0);

        num_blocks -= num_blocks_at_qpi;
    }

    return 0;
}
