
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int SWR_CH_MAX ;
 int swri_oldapi_conv_fltp_to_s16_nch_neon (int *,float* const*,int,int) ;

__attribute__((used)) static void conv_fltp_to_s16_nch_neon(uint8_t **dst, const uint8_t **src, int len){
    int channels;
    for(channels=3; channels<SWR_CH_MAX && src[channels]; channels++)
        ;
    swri_oldapi_conv_fltp_to_s16_nch_neon((int16_t*)*dst, (float *const*)src, len, channels);
}
