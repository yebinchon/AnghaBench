
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;


 int av_get_alt_sample_fmt (int,int ) ;
 int av_get_bytes_per_sample (int) ;
 scalar_t__ av_sample_fmt_is_planar (int) ;

__attribute__((used)) static void shift(uint8_t *a[], int index, int ch_count, enum AVSampleFormat f){
    int ch;

    if(av_sample_fmt_is_planar(f)){
        f= av_get_alt_sample_fmt(f, 0);
        for(ch= 0; ch<ch_count; ch++)
            a[ch] += index*av_get_bytes_per_sample(f);
    }else{
        a[0] += index*ch_count*av_get_bytes_per_sample(f);
    }
}
