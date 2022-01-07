
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VLC ;
struct TYPE_5__ {int table_type; } ;
struct TYPE_4__ {int use_full_table; TYPE_2__* channels; } ;
typedef int GetBitContext ;
typedef TYPE_1__ Atrac3pChanUnitCtx ;
typedef TYPE_2__ Atrac3pChanParams ;
typedef int AVCodecContext ;


 int CODING_DIRECT ;
 int CODING_VLC ;
 int CODING_VLC_DELTA ;
 int CODING_VLC_DIFF ;
 int DEC_CT_IDX_COMMON (int ) ;
 int * ct_vlc_tabs ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;

__attribute__((used)) static int decode_channel_code_tab(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                   int ch_num, AVCodecContext *avctx)
{
    int i, num_vals, num_bits, pred;
    int mask = ctx->use_full_table ? 7 : 3;
    VLC *vlc_tab, *delta_vlc;
    Atrac3pChanParams *chan = &ctx->channels[ch_num];
    Atrac3pChanParams *ref_chan = &ctx->channels[0];

    chan->table_type = get_bits1(gb);

    switch (get_bits(gb, 2)) {
    case 0:
        num_bits = ctx->use_full_table + 2;
        DEC_CT_IDX_COMMON(CODING_DIRECT);
        break;
    case 1:
        vlc_tab = ctx->use_full_table ? &ct_vlc_tabs[1]
                                      : ct_vlc_tabs;
        DEC_CT_IDX_COMMON(CODING_VLC);
        break;
    case 2:
        if (ctx->use_full_table) {
            vlc_tab = &ct_vlc_tabs[1];
            delta_vlc = &ct_vlc_tabs[2];
        } else {
            vlc_tab = ct_vlc_tabs;
            delta_vlc = ct_vlc_tabs;
        }
        pred = 0;
        DEC_CT_IDX_COMMON(CODING_VLC_DELTA);
        break;
    case 3:
        if (ch_num) {
            vlc_tab = ctx->use_full_table ? &ct_vlc_tabs[3]
                                          : ct_vlc_tabs;
            DEC_CT_IDX_COMMON(CODING_VLC_DIFF);
        }
        break;
    }

    return 0;
}
