
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* linesize; int channel_layout; int format; } ;
typedef TYPE_1__ AVFrame ;


 int av_get_bytes_per_sample (int ) ;
 int av_get_channel_layout_nb_channels (int ) ;
 scalar_t__ av_sample_fmt_is_planar (int ) ;

__attribute__((used)) static inline int available_samples(AVFrame *out)
{
    int bytes_per_sample = av_get_bytes_per_sample(out->format);
    int samples = out->linesize[0] / bytes_per_sample;

    if (av_sample_fmt_is_planar(out->format)) {
        return samples;
    } else {
        int channels = av_get_channel_layout_nb_channels(out->channel_layout);
        return samples / channels;
    }
}
