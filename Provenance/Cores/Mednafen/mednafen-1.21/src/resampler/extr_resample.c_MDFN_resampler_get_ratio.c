
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spx_uint32_t ;
struct TYPE_3__ {int den_rate; int num_rate; } ;
typedef TYPE_1__ SpeexResamplerState ;



void speex_resampler_get_ratio(SpeexResamplerState *st, spx_uint32_t *ratio_num, spx_uint32_t *ratio_den)
{
   *ratio_num = st->num_rate;
   *ratio_den = st->den_rate;
}
