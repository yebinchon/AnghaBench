
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hw_frames_ctx; int channel_layout; int channels; int sample_rate; int sample_aspect_ratio; int height; int width; int format; } ;
struct TYPE_5__ {int hw_frames_ctx; int channel_layout; int channels; int sample_rate; int sample_aspect_ratio; int height; int width; int format; } ;
typedef TYPE_1__ InputFilter ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_buffer_ref (scalar_t__) ;
 int av_buffer_unref (int *) ;

int ifilter_parameters_from_frame(InputFilter *ifilter, const AVFrame *frame)
{
    av_buffer_unref(&ifilter->hw_frames_ctx);

    ifilter->format = frame->format;

    ifilter->width = frame->width;
    ifilter->height = frame->height;
    ifilter->sample_aspect_ratio = frame->sample_aspect_ratio;

    ifilter->sample_rate = frame->sample_rate;
    ifilter->channels = frame->channels;
    ifilter->channel_layout = frame->channel_layout;

    if (frame->hw_frames_ctx) {
        ifilter->hw_frames_ctx = av_buffer_ref(frame->hw_frames_ctx);
        if (!ifilter->hw_frames_ctx)
            return AVERROR(ENOMEM);
    }

    return 0;
}
