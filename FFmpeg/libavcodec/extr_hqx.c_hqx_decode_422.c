
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dcb; int * dc_vlc; scalar_t__ interlaced; TYPE_1__* slice; } ;
struct TYPE_5__ {int * block; int gb; } ;
typedef TYPE_1__ HQXSlice ;
typedef TYPE_2__ HQXContext ;
typedef int GetBitContext ;


 int decode_block (int *,int *,int const*,int ,int ,int*) ;
 size_t get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int hqx_quant_chroma ;
 int hqx_quant_luma ;
 int** hqx_quants ;
 int put_blocks (TYPE_2__*,int,int,int,int,int ,int ,int ) ;

__attribute__((used)) static int hqx_decode_422(HQXContext *ctx, int slice_no, int x, int y)
{
    HQXSlice *slice = &ctx->slice[slice_no];
    GetBitContext *gb = &slice->gb;
    const int *quants;
    int flag;
    int last_dc;
    int i, ret;

    if (ctx->interlaced)
        flag = get_bits1(gb);
    else
        flag = 0;

    quants = hqx_quants[get_bits(gb, 4)];

    for (i = 0; i < 8; i++) {
        int vlc_index = ctx->dcb - 9;
        if (i == 0 || i == 4 || i == 6)
            last_dc = 0;
        ret = decode_block(gb, &ctx->dc_vlc[vlc_index], quants,
                           ctx->dcb, slice->block[i], &last_dc);
        if (ret < 0)
            return ret;
    }

    put_blocks(ctx, 0, x, y, flag, slice->block[0], slice->block[2], hqx_quant_luma);
    put_blocks(ctx, 0, x + 8, y, flag, slice->block[1], slice->block[3], hqx_quant_luma);
    put_blocks(ctx, 2, x >> 1, y, flag, slice->block[4], slice->block[5], hqx_quant_chroma);
    put_blocks(ctx, 1, x >> 1, y, flag, slice->block[6], slice->block[7], hqx_quant_chroma);

    return 0;
}
