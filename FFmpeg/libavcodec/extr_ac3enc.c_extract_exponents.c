
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * fixed_coef; int * exp; } ;
struct TYPE_5__ {int (* extract_exponents ) (int ,int ,int) ;} ;
struct TYPE_6__ {int num_blocks; int channels; TYPE_1__ ac3dsp; TYPE_3__* blocks; int cpl_on; } ;
typedef TYPE_2__ AC3EncodeContext ;
typedef TYPE_3__ AC3Block ;


 int AC3_MAX_COEFS ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static void extract_exponents(AC3EncodeContext *s)
{
    int ch = !s->cpl_on;
    int chan_size = AC3_MAX_COEFS * s->num_blocks * (s->channels - ch + 1);
    AC3Block *block = &s->blocks[0];

    s->ac3dsp.extract_exponents(block->exp[ch], block->fixed_coef[ch], chan_size);
}
