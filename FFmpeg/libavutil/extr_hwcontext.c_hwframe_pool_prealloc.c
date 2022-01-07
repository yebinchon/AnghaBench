
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int initial_pool_size; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVBufferRef ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_freep (int ***) ;
 int av_hwframe_get_buffer (TYPE_2__*,int *,int ) ;
 int ** av_mallocz_array (int,int) ;

__attribute__((used)) static int hwframe_pool_prealloc(AVBufferRef *ref)
{
    AVHWFramesContext *ctx = (AVHWFramesContext*)ref->data;
    AVFrame **frames;
    int i, ret = 0;

    frames = av_mallocz_array(ctx->initial_pool_size, sizeof(*frames));
    if (!frames)
        return AVERROR(ENOMEM);

    for (i = 0; i < ctx->initial_pool_size; i++) {
        frames[i] = av_frame_alloc();
        if (!frames[i])
            goto fail;

        ret = av_hwframe_get_buffer(ref, frames[i], 0);
        if (ret < 0)
            goto fail;
    }

fail:
    for (i = 0; i < ctx->initial_pool_size; i++)
        av_frame_free(&frames[i]);
    av_freep(&frames);

    return ret;
}
