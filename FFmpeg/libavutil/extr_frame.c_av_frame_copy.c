
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ format; scalar_t__ width; scalar_t__ height; scalar_t__ nb_samples; scalar_t__ channels; } ;
typedef TYPE_1__ AVFrame ;


 int AVERROR (int ) ;
 int EINVAL ;
 int frame_copy_audio (TYPE_1__*,TYPE_1__ const*) ;
 int frame_copy_video (TYPE_1__*,TYPE_1__ const*) ;

int av_frame_copy(AVFrame *dst, const AVFrame *src)
{
    if (dst->format != src->format || dst->format < 0)
        return AVERROR(EINVAL);

    if (dst->width > 0 && dst->height > 0)
        return frame_copy_video(dst, src);
    else if (dst->nb_samples > 0 && dst->channels > 0)
        return frame_copy_audio(dst, src);

    return AVERROR(EINVAL);
}
