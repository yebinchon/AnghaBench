
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_27__ {scalar_t__ format; TYPE_3__* hw_frames_ctx; TYPE_2__** buf; } ;
struct TYPE_26__ {scalar_t__ sw_format; scalar_t__ format; TYPE_5__* internal; } ;
struct TYPE_25__ {int source; } ;
struct TYPE_24__ {TYPE_4__* hw_type; TYPE_1__* source_frames; } ;
struct TYPE_23__ {int (* map_from ) (TYPE_7__*,TYPE_8__*,TYPE_8__ const*,int) ;int (* map_to ) (TYPE_7__*,TYPE_8__*,TYPE_8__ const*,int) ;} ;
struct TYPE_22__ {scalar_t__ data; } ;
struct TYPE_21__ {scalar_t__ data; } ;
struct TYPE_20__ {int * data; } ;
typedef TYPE_6__ HWMapDescriptor ;
typedef TYPE_7__ AVHWFramesContext ;
typedef TYPE_8__ AVFrame ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOSYS ;
 int av_frame_ref (TYPE_8__*,int ) ;
 int av_frame_unref (TYPE_8__*) ;
 int av_log (TYPE_7__*,int ,char*) ;
 int stub1 (TYPE_7__*,TYPE_8__*,TYPE_8__ const*,int) ;
 int stub2 (TYPE_7__*,TYPE_8__*,TYPE_8__ const*,int) ;

int av_hwframe_map(AVFrame *dst, const AVFrame *src, int flags)
{
    AVHWFramesContext *src_frames, *dst_frames;
    HWMapDescriptor *hwmap;
    int ret;

    if (src->hw_frames_ctx && dst->hw_frames_ctx) {
        src_frames = (AVHWFramesContext*)src->hw_frames_ctx->data;
        dst_frames = (AVHWFramesContext*)dst->hw_frames_ctx->data;

        if ((src_frames == dst_frames &&
             src->format == dst_frames->sw_format &&
             dst->format == dst_frames->format) ||
            (src_frames->internal->source_frames &&
             src_frames->internal->source_frames->data ==
             (uint8_t*)dst_frames)) {




            if (!src->buf[0]) {
                av_log(src_frames, AV_LOG_ERROR, "Invalid mapping "
                       "found when attempting unmap.\n");
                return AVERROR(EINVAL);
            }
            hwmap = (HWMapDescriptor*)src->buf[0]->data;
            av_frame_unref(dst);
            return av_frame_ref(dst, hwmap->source);
        }
    }

    if (src->hw_frames_ctx) {
        src_frames = (AVHWFramesContext*)src->hw_frames_ctx->data;

        if (src_frames->format == src->format &&
            src_frames->internal->hw_type->map_from) {
            ret = src_frames->internal->hw_type->map_from(src_frames,
                                                          dst, src, flags);
            if (ret != AVERROR(ENOSYS))
                return ret;
        }
    }

    if (dst->hw_frames_ctx) {
        dst_frames = (AVHWFramesContext*)dst->hw_frames_ctx->data;

        if (dst_frames->format == dst->format &&
            dst_frames->internal->hw_type->map_to) {
            ret = dst_frames->internal->hw_type->map_to(dst_frames,
                                                        dst, src, flags);
            if (ret != AVERROR(ENOSYS))
                return ret;
        }
    }

    return AVERROR(ENOSYS);
}
