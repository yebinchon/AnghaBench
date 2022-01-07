
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int npixels; int * frm0; int buf_size; } ;
typedef TYPE_1__ SANMVideoContext ;


 int AVERROR_INVALIDDATA ;
 int av_bswap16 (int ) ;
 scalar_t__ rle_decode (TYPE_1__*,int *,int ) ;

__attribute__((used)) static int decode_5(SANMVideoContext *ctx)
{




    uint8_t *dst = (uint8_t*)ctx->frm0;

    if (rle_decode(ctx, dst, ctx->buf_size))
        return AVERROR_INVALIDDATA;
    return 0;
}
