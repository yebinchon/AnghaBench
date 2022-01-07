
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ format; scalar_t__ width; scalar_t__ height; scalar_t__ nb_samples; scalar_t__ channels; scalar_t__ channel_layout; } ;
typedef TYPE_1__ AVFrame ;


 int AVERROR (int ) ;
 int EINVAL ;
 int get_audio_buffer (TYPE_1__*,int) ;
 int get_video_buffer (TYPE_1__*,int) ;

int av_frame_get_buffer(AVFrame *frame, int align)
{
    if (frame->format < 0)
        return AVERROR(EINVAL);

    if (frame->width > 0 && frame->height > 0)
        return get_video_buffer(frame, align);
    else if (frame->nb_samples > 0 && (frame->channel_layout || frame->channels > 0))
        return get_audio_buffer(frame, align);

    return AVERROR(EINVAL);
}
