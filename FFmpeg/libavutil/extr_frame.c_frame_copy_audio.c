
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int channels; scalar_t__ nb_samples; scalar_t__ channel_layout; int format; int * extended_data; } ;
typedef TYPE_1__ AVFrame ;


 int AVERROR (int ) ;
 int CHECK_CHANNELS_CONSISTENCY (TYPE_1__ const*) ;
 int EINVAL ;
 int av_sample_fmt_is_planar (int ) ;
 int av_samples_copy (int *,int *,int ,int ,scalar_t__,int,int ) ;

__attribute__((used)) static int frame_copy_audio(AVFrame *dst, const AVFrame *src)
{
    int planar = av_sample_fmt_is_planar(dst->format);
    int channels = dst->channels;
    int planes = planar ? channels : 1;
    int i;

    if (dst->nb_samples != src->nb_samples ||
        dst->channels != src->channels ||
        dst->channel_layout != src->channel_layout)
        return AVERROR(EINVAL);

    CHECK_CHANNELS_CONSISTENCY(src);

    for (i = 0; i < planes; i++)
        if (!dst->extended_data[i] || !src->extended_data[i])
            return AVERROR(EINVAL);

    av_samples_copy(dst->extended_data, src->extended_data, 0, 0,
                    dst->nb_samples, channels, dst->format);

    return 0;
}
