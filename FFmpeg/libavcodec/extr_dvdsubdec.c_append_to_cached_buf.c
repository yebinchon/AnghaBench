
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ DVDSubContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_WARNING ;
 int av_assert0 (int) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int memcpy (scalar_t__,int const*,int) ;

__attribute__((used)) static int append_to_cached_buf(AVCodecContext *avctx,
                                const uint8_t *buf, int buf_size)
{
    DVDSubContext *ctx = avctx->priv_data;

    av_assert0(buf_size >= 0 && ctx->buf_size <= sizeof(ctx->buf));
    if (buf_size >= sizeof(ctx->buf) - ctx->buf_size) {
        av_log(avctx, AV_LOG_WARNING, "Attempt to reconstruct "
               "too large SPU packets aborted.\n");
        ctx->buf_size = 0;
        return AVERROR_INVALIDDATA;
    }
    memcpy(ctx->buf + ctx->buf_size, buf, buf_size);
    ctx->buf_size += buf_size;
    return 0;
}
