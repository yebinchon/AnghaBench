
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_3__ {int fmt; int planar; int ch_count; int bps; } ;
typedef TYPE_1__ AudioData ;


 int av_get_bytes_per_sample (int) ;
 int av_sample_fmt_is_planar (int) ;

__attribute__((used)) static void set_audiodata_fmt(AudioData *a, enum AVSampleFormat fmt){
    a->fmt = fmt;
    a->bps = av_get_bytes_per_sample(fmt);
    a->planar= av_sample_fmt_is_planar(fmt);
    if (a->ch_count == 1)
        a->planar = 1;
}
