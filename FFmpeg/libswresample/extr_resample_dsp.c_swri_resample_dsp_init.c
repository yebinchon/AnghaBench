
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int resample_linear; int resample_common; int resample_one; } ;
struct TYPE_8__ {int format; TYPE_1__ dsp; } ;
typedef TYPE_2__ ResampleContext ;


 scalar_t__ ARCH_AARCH64 ;
 scalar_t__ ARCH_ARM ;
 scalar_t__ ARCH_X86 ;




 int resample_common_double ;
 int resample_common_float ;
 int resample_common_int16 ;
 int resample_common_int32 ;
 int resample_linear_double ;
 int resample_linear_float ;
 int resample_linear_int16 ;
 int resample_linear_int32 ;
 int resample_one_double ;
 int resample_one_float ;
 int resample_one_int16 ;
 int resample_one_int32 ;
 int swri_resample_dsp_aarch64_init (TYPE_2__*) ;
 int swri_resample_dsp_arm_init (TYPE_2__*) ;
 int swri_resample_dsp_x86_init (TYPE_2__*) ;

void swri_resample_dsp_init(ResampleContext *c)
{
    switch(c->format){
    case 129:
        c->dsp.resample_one = resample_one_int16;
        c->dsp.resample_common = resample_common_int16;
        c->dsp.resample_linear = resample_linear_int16;
        break;
    case 128:
        c->dsp.resample_one = resample_one_int32;
        c->dsp.resample_common = resample_common_int32;
        c->dsp.resample_linear = resample_linear_int32;
        break;
    case 130:
        c->dsp.resample_one = resample_one_float;
        c->dsp.resample_common = resample_common_float;
        c->dsp.resample_linear = resample_linear_float;
        break;
    case 131:
        c->dsp.resample_one = resample_one_double;
        c->dsp.resample_common = resample_common_double;
        c->dsp.resample_linear = resample_linear_double;
        break;
    }

    if (ARCH_X86) swri_resample_dsp_x86_init(c);
    else if (ARCH_ARM) swri_resample_dsp_arm_init(c);
    else if (ARCH_AARCH64) swri_resample_dsp_aarch64_init(c);
}
