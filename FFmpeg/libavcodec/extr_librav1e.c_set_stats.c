
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pass_size; scalar_t__ pass_pos; scalar_t__ pass_data; int ctx; } ;
typedef TYPE_1__ librav1eContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_EXTERNAL ;
 int rav1e_twopass_in (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int set_stats(AVCodecContext *avctx)
{
    librav1eContext *ctx = avctx->priv_data;
    int ret = 1;

    while (ret > 0 && ctx->pass_size - ctx->pass_pos > 0) {
        ret = rav1e_twopass_in(ctx->ctx, ctx->pass_data + ctx->pass_pos, ctx->pass_size);
        if (ret < 0)
            return AVERROR_EXTERNAL;
        ctx->pass_pos += ret;
    }

    return 0;
}
