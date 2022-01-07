
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;


 int av_sample_fmt_is_planar (int) ;

int ff_sample_fmt_is_planar(enum AVSampleFormat sample_fmt, int channels)
{
    if (channels == 1)
        return 1;
    else
        return av_sample_fmt_is_planar(sample_fmt);
}
