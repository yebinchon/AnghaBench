
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ tex_size; int tex_data; int gbc; } ;
typedef int GetByteContext ;
typedef TYPE_1__ DXVContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_buffer (int *,int ,scalar_t__) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;

__attribute__((used)) static int dxv_decompress_raw(AVCodecContext *avctx)
{
    DXVContext *ctx = avctx->priv_data;
    GetByteContext *gbc = &ctx->gbc;

    if (bytestream2_get_bytes_left(gbc) < ctx->tex_size)
        return AVERROR_INVALIDDATA;

    bytestream2_get_buffer(gbc, ctx->tex_data, ctx->tex_size);
    return 0;
}
