
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spx_uint32_t ;
typedef int SpeexResamplerState ;


 int speex_resampler_set_rate_frac (int *,int ,int ,int ,int ) ;

int speex_resampler_set_rate(SpeexResamplerState *st, spx_uint32_t in_rate, spx_uint32_t out_rate)
{
   return speex_resampler_set_rate_frac(st, in_rate, out_rate, in_rate, out_rate);
}
