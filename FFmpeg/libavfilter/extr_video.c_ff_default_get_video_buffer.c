
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_13__ {scalar_t__ format; int sample_aspect_ratio; void* frame_pool; TYPE_7__* hw_frames_ctx; } ;
struct TYPE_12__ {int sample_aspect_ratio; } ;
struct TYPE_11__ {scalar_t__ format; } ;
typedef int FFFramePool ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int AV_PIX_FMT_NONE ;
 int BUFFER_ALIGN ;
 int av_buffer_allocz ;
 TYPE_2__* av_frame_alloc () ;
 int av_frame_free (TYPE_2__**) ;
 int av_hwframe_get_buffer (TYPE_7__*,TYPE_2__*,int ) ;
 TYPE_2__* ff_frame_pool_get (void*) ;
 scalar_t__ ff_frame_pool_get_video_config (void*,int*,int*,int*,int*) ;
 int ff_frame_pool_uninit (int **) ;
 void* ff_frame_pool_video_init (int ,int,int,scalar_t__,int) ;

AVFrame *ff_default_get_video_buffer(AVFilterLink *link, int w, int h)
{
    AVFrame *frame = ((void*)0);
    int pool_width = 0;
    int pool_height = 0;
    int pool_align = 0;
    enum AVPixelFormat pool_format = AV_PIX_FMT_NONE;

    if (link->hw_frames_ctx &&
        ((AVHWFramesContext*)link->hw_frames_ctx->data)->format == link->format) {
        int ret;
        AVFrame *frame = av_frame_alloc();

        if (!frame)
            return ((void*)0);

        ret = av_hwframe_get_buffer(link->hw_frames_ctx, frame, 0);
        if (ret < 0)
            av_frame_free(&frame);

        return frame;
    }

    if (!link->frame_pool) {
        link->frame_pool = ff_frame_pool_video_init(av_buffer_allocz, w, h,
                                                    link->format, BUFFER_ALIGN);
        if (!link->frame_pool)
            return ((void*)0);
    } else {
        if (ff_frame_pool_get_video_config(link->frame_pool,
                                           &pool_width, &pool_height,
                                           &pool_format, &pool_align) < 0) {
            return ((void*)0);
        }

        if (pool_width != w || pool_height != h ||
            pool_format != link->format || pool_align != BUFFER_ALIGN) {

            ff_frame_pool_uninit((FFFramePool **)&link->frame_pool);
            link->frame_pool = ff_frame_pool_video_init(av_buffer_allocz, w, h,
                                                        link->format, BUFFER_ALIGN);
            if (!link->frame_pool)
                return ((void*)0);
        }
    }

    frame = ff_frame_pool_get(link->frame_pool);
    if (!frame)
        return ((void*)0);

    frame->sample_aspect_ratio = link->sample_aspect_ratio;

    return frame;
}
