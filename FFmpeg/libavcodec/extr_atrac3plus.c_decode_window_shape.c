
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_subbands; TYPE_1__* channels; } ;
struct TYPE_4__ {int wnd_shape; } ;
typedef int GetBitContext ;
typedef TYPE_2__ Atrac3pChanUnitCtx ;


 int get_subband_flags (int *,int ,int ) ;

__attribute__((used)) static void decode_window_shape(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                int num_channels)
{
    int ch_num;

    for (ch_num = 0; ch_num < num_channels; ch_num++)
        get_subband_flags(gb, ctx->channels[ch_num].wnd_shape,
                          ctx->num_subbands);
}
