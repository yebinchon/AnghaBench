
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pitch; int buf_size; int avctx; } ;
typedef TYPE_1__ SANMVideoContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,int,int,int,int,int) ;

__attribute__((used)) static int good_mvec(SANMVideoContext *ctx, int cx, int cy, int mx, int my,
                     int block_size)
{
    int start_pos = cx + mx + (cy + my) * ctx->pitch;
    int end_pos = start_pos + (block_size - 1) * (ctx->pitch + 1);

    int good = start_pos >= 0 && end_pos < (ctx->buf_size >> 1);

    if (!good)
        av_log(ctx->avctx, AV_LOG_ERROR,
               "Ignoring invalid motion vector (%i, %i)->(%u, %u), block size = %u\n",
               cx + mx, cy + my, cx, cy, block_size);

    return good;
}
