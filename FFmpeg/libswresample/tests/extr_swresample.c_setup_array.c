
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;


 int SWR_CH_MAX ;
 int av_get_bytes_per_sample (int) ;
 scalar_t__ av_sample_fmt_is_planar (int) ;

__attribute__((used)) static void setup_array(uint8_t *out[SWR_CH_MAX], uint8_t *in, enum AVSampleFormat format, int samples){
    if(av_sample_fmt_is_planar(format)){
        int i;
        int plane_size= av_get_bytes_per_sample(format&0xFF)*samples;
        format&=0xFF;
        for(i=0; i<SWR_CH_MAX; i++){
            out[i]= in + i*plane_size;
        }
    }else{
        out[0]= in;
    }
}
