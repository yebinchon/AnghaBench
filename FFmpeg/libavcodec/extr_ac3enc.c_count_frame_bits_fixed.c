
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int num_blocks; int fbw_channels; int num_blks_code; size_t channel_mode; int frame_bits_fixed; scalar_t__ eac3; scalar_t__ lfe_on; scalar_t__ use_frame_exp_strategy; } ;
typedef TYPE_1__ AC3EncodeContext ;



__attribute__((used)) static void count_frame_bits_fixed(AC3EncodeContext *s)
{
    static const uint8_t frame_bits_inc[8] = { 0, 0, 2, 2, 2, 4, 2, 4 };
    int blk;
    int frame_bits;
    frame_bits = 16;
    if (s->eac3) {

        frame_bits += 35;
        frame_bits += 1 + 1;
        if (s->num_blocks != 0x6)
            frame_bits++;
        frame_bits++;

        if (s->num_blocks == 6)
            frame_bits += 2;
        frame_bits += 10;

        if (s->use_frame_exp_strategy)
            frame_bits += 5 * s->fbw_channels;
        else
            frame_bits += s->num_blocks * 2 * s->fbw_channels;
        if (s->lfe_on)
            frame_bits += s->num_blocks;

        if (s->num_blks_code != 0x3)
            frame_bits++;
        else
            frame_bits += s->fbw_channels * 5;

        frame_bits += 10;

        if (s->num_blocks != 1)
            frame_bits++;
    } else {
        frame_bits += 49;
        frame_bits += frame_bits_inc[s->channel_mode];
    }


    for (blk = 0; blk < s->num_blocks; blk++) {
        if (!s->eac3) {

            frame_bits += s->fbw_channels;


            frame_bits += s->fbw_channels;
        }


        frame_bits++;


        if (s->eac3)
            frame_bits++;

        if (!s->eac3) {

            frame_bits += 2 * s->fbw_channels;
            if (s->lfe_on)
                frame_bits++;


            frame_bits++;
            if (!blk)
                frame_bits += 2 + 2 + 2 + 2 + 3;
        }


        if (s->eac3)
            frame_bits++;

        if (!s->eac3) {

            frame_bits++;


            frame_bits++;
        }
    }


    frame_bits++;


    frame_bits += 1 + 16;

    s->frame_bits_fixed = frame_bits;
}
