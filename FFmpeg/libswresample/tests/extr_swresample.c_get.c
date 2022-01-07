
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint8_t ;
typedef double int32_t ;
typedef double int16_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;







 int av_assert0 (int ) ;
 int av_get_alt_sample_fmt (int,int ) ;
 scalar_t__ av_sample_fmt_is_planar (int) ;

__attribute__((used)) static double get(uint8_t *a[], int ch, int index, int ch_count, enum AVSampleFormat f){
    const uint8_t *p;
    if(av_sample_fmt_is_planar(f)){
        f= av_get_alt_sample_fmt(f, 0);
        p= a[ch];
    }else{
        p= a[0];
        index= ch + index*ch_count;
    }

    switch(f){
    case 128 : return ((const uint8_t*)p)[index]/127.0-1.0;
    case 130: return ((const int16_t*)p)[index]/32767.0;
    case 129: return ((const int32_t*)p)[index]/2147483647.0;
    case 131: return ((const float *)p)[index];
    case 132: return ((const double *)p)[index];
    default: av_assert0(0);
    }
}
