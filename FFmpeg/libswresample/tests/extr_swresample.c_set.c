
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;







 int av_assert2 (int ) ;
 int av_clip_int16 (int ) ;
 int av_clip_uint8 (int ) ;
 int av_clipl_int32 (int ) ;
 int av_get_alt_sample_fmt (int,int ) ;
 scalar_t__ av_sample_fmt_is_planar (int) ;
 int llrint (double) ;
 int lrint (double) ;

__attribute__((used)) static void set(uint8_t *a[], int ch, int index, int ch_count, enum AVSampleFormat f, double v){
    uint8_t *p;
    if(av_sample_fmt_is_planar(f)){
        f= av_get_alt_sample_fmt(f, 0);
        p= a[ch];
    }else{
        p= a[0];
        index= ch + index*ch_count;
    }
    switch(f){
    case 128 : ((uint8_t*)p)[index]= av_clip_uint8 (lrint((v+1.0)*127)); break;
    case 130: ((int16_t*)p)[index]= av_clip_int16 (lrint(v*32767)); break;
    case 129: ((int32_t*)p)[index]= av_clipl_int32(llrint(v*2147483647)); break;
    case 131: ((float *)p)[index]= v; break;
    case 132: ((double *)p)[index]= v; break;
    default: av_assert2(0);
    }
}
