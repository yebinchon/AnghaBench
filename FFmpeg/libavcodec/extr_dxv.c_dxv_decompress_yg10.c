
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int * op_size; int * op_data; int ctex_size; int ctex_data; int tex_size; int tex_data; int gbc; } ;
typedef int GetByteContext ;
typedef TYPE_1__ DXVContext ;
typedef TYPE_2__ AVCodecContext ;


 int dxv_decompress_cocg (TYPE_1__*,int *,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int dxv_decompress_yg10(AVCodecContext *avctx)
{
    DXVContext *ctx = avctx->priv_data;
    GetByteContext *gb = &ctx->gbc;
    int ret;

    ret = dxv_decompress_cocg(ctx, gb, ctx->tex_data, ctx->tex_size,
                              ctx->op_data[0], ctx->op_data[3],
                              ctx->op_size[0], ctx->op_size[3]);
    if (ret < 0)
        return ret;

    return dxv_decompress_cocg(ctx, gb, ctx->ctex_data, ctx->ctex_size,
                               ctx->op_data[1], ctx->op_data[2],
                               ctx->op_size[1], ctx->op_size[2]);
}
