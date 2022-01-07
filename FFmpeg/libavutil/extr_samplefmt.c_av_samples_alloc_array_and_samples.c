
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int ** av_calloc (int,int) ;
 int av_freep (int ***) ;
 scalar_t__ av_sample_fmt_is_planar (int) ;
 int av_samples_alloc (int **,int*,int,int,int,int) ;

int av_samples_alloc_array_and_samples(uint8_t ***audio_data, int *linesize, int nb_channels,
                                       int nb_samples, enum AVSampleFormat sample_fmt, int align)
{
    int ret, nb_planes = av_sample_fmt_is_planar(sample_fmt) ? nb_channels : 1;

    *audio_data = av_calloc(nb_planes, sizeof(**audio_data));
    if (!*audio_data)
        return AVERROR(ENOMEM);
    ret = av_samples_alloc(*audio_data, linesize, nb_channels,
                           nb_samples, sample_fmt, align);
    if (ret < 0)
        av_freep(audio_data);
    return ret;
}
