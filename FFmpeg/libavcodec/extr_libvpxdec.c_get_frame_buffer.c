
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t size; int data; TYPE_3__* priv; } ;
typedef TYPE_1__ vpx_codec_frame_buffer_t ;
struct TYPE_7__ {size_t pool_size; int pool; } ;
typedef TYPE_2__ VPxContext ;
struct TYPE_8__ {int data; } ;
typedef TYPE_3__ AVBufferRef ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_buffer_allocz ;
 TYPE_3__* av_buffer_pool_get (int ) ;
 int av_buffer_pool_init (size_t,int ) ;
 int av_buffer_pool_uninit (int *) ;

__attribute__((used)) static int get_frame_buffer(void *priv, size_t min_size, vpx_codec_frame_buffer_t *fb)
{
    VPxContext *ctx = priv;
    AVBufferRef *buf;

    if (min_size > ctx->pool_size) {
        av_buffer_pool_uninit(&ctx->pool);

        ctx->pool = av_buffer_pool_init(min_size, av_buffer_allocz);
        if (!ctx->pool) {
            ctx->pool_size = 0;
            return AVERROR(ENOMEM);
        }
        ctx->pool_size = min_size;
    }

    buf = av_buffer_pool_get(ctx->pool);
    if (!buf)
        return AVERROR(ENOMEM);

    fb->priv = buf;
    fb->size = ctx->pool_size;
    fb->data = buf->data;

    return 0;
}
