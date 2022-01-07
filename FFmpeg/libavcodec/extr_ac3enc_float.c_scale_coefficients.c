
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* float_to_fixed24 ) (scalar_t__,scalar_t__,int) ;} ;
struct TYPE_5__ {int num_blocks; int cpl_on; int channels; scalar_t__ mdct_coef_buffer; scalar_t__ fixed_coef_buffer; TYPE_1__ ac3dsp; } ;
typedef TYPE_2__ AC3EncodeContext ;


 int AC3_MAX_COEFS ;
 int stub1 (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void scale_coefficients(AC3EncodeContext *s)
{
    int chan_size = AC3_MAX_COEFS * s->num_blocks;
    int cpl = s->cpl_on;
    s->ac3dsp.float_to_fixed24(s->fixed_coef_buffer + (chan_size * !cpl),
                               s->mdct_coef_buffer + (chan_size * !cpl),
                               chan_size * (s->channels + cpl));
}
