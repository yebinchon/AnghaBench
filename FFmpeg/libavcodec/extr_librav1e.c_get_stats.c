
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int pass_pos; int * pass_data; int pass_size; int ctx; } ;
typedef TYPE_1__ librav1eContext ;
struct TYPE_9__ {int stats_out; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int len; int data; } ;
typedef TYPE_2__ RaData ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 size_t AV_BASE64_SIZE (int) ;
 int ENOMEM ;
 int av_base64_encode (int ,size_t,int *,int) ;
 int * av_fast_realloc (int *,int *,int) ;
 int av_freep (int **) ;
 int av_malloc (size_t) ;
 int memcpy (int *,int ,int) ;
 int rav1e_data_unref (TYPE_2__*) ;
 TYPE_2__* rav1e_twopass_out (int ) ;

__attribute__((used)) static int get_stats(AVCodecContext *avctx, int eos)
{
    librav1eContext *ctx = avctx->priv_data;
    RaData* buf = rav1e_twopass_out(ctx->ctx);
    if (!buf)
        return 0;

    if (!eos) {
        uint8_t *tmp = av_fast_realloc(ctx->pass_data, &ctx->pass_size,
                                      ctx->pass_pos + buf->len);
        if (!tmp) {
            rav1e_data_unref(buf);
            return AVERROR(ENOMEM);
        }

        ctx->pass_data = tmp;
        memcpy(ctx->pass_data + ctx->pass_pos, buf->data, buf->len);
        ctx->pass_pos += buf->len;
    } else {
        size_t b64_size = AV_BASE64_SIZE(ctx->pass_pos);

        memcpy(ctx->pass_data, buf->data, buf->len);

        avctx->stats_out = av_malloc(b64_size);
        if (!avctx->stats_out) {
            rav1e_data_unref(buf);
            return AVERROR(ENOMEM);
        }

        av_base64_encode(avctx->stats_out, b64_size, ctx->pass_data, ctx->pass_pos);

        av_freep(&ctx->pass_data);
    }

    rav1e_data_unref(buf);

    return 0;
}
