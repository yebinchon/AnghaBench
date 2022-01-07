
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int bits; int table; } ;
struct TYPE_8__ {TYPE_1__* gain_data; } ;
struct TYPE_7__ {TYPE_3__* channels; } ;
struct TYPE_6__ {int num_points; } ;
typedef int GetBitContext ;
typedef TYPE_2__ Atrac3pChanUnitCtx ;
typedef TYPE_3__ Atrac3pChanParams ;


 int AVERROR_INVALIDDATA ;
 TYPE_4__* gain_vlc_tabs ;
 int get_bits (int *,int) ;
 int get_bitsz (int *,int) ;
 void* get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static int decode_gainc_npoints(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                int ch_num, int coded_subbands)
{
    int i, delta, delta_bits, min_val;
    Atrac3pChanParams *chan = &ctx->channels[ch_num];
    Atrac3pChanParams *ref_chan = &ctx->channels[0];

    switch (get_bits(gb, 2)) {
    case 0:
        for (i = 0; i < coded_subbands; i++)
            chan->gain_data[i].num_points = get_bits(gb, 3);
        break;
    case 1:
        for (i = 0; i < coded_subbands; i++)
            chan->gain_data[i].num_points =
                get_vlc2(gb, gain_vlc_tabs[0].table,
                         gain_vlc_tabs[0].bits, 1);
        break;
    case 2:
        if (ch_num) {
            for (i = 0; i < coded_subbands; i++) {
                delta = get_vlc2(gb, gain_vlc_tabs[1].table,
                                 gain_vlc_tabs[1].bits, 1);
                chan->gain_data[i].num_points =
                    (ref_chan->gain_data[i].num_points + delta) & 7;
            }
        } else {
            chan->gain_data[0].num_points =
                get_vlc2(gb, gain_vlc_tabs[0].table,
                         gain_vlc_tabs[0].bits, 1);

            for (i = 1; i < coded_subbands; i++) {
                delta = get_vlc2(gb, gain_vlc_tabs[1].table,
                                 gain_vlc_tabs[1].bits, 1);
                chan->gain_data[i].num_points =
                    (chan->gain_data[i - 1].num_points + delta) & 7;
            }
        }
        break;
    case 3:
        if (ch_num) {
            for (i = 0; i < coded_subbands; i++)
                chan->gain_data[i].num_points =
                    ref_chan->gain_data[i].num_points;
        } else {
            delta_bits = get_bits(gb, 2);
            min_val = get_bits(gb, 3);

            for (i = 0; i < coded_subbands; i++) {
                chan->gain_data[i].num_points = min_val + get_bitsz(gb, delta_bits);
                if (chan->gain_data[i].num_points > 7)
                    return AVERROR_INVALIDDATA;
            }
        }
    }

    return 0;
}
