
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* dot_productf ) (float*,float*,int ) ;} ;
typedef TYPE_1__ CELPMContext ;


 int AMRWB_SFR_SIZE ;
 scalar_t__ stub1 (float*,float*,int ) ;
 scalar_t__ stub2 (float*,float*,int ) ;

__attribute__((used)) static float voice_factor(float *p_vector, float p_gain,
                          float *f_vector, float f_gain,
                          CELPMContext *ctx)
{
    double p_ener = (double) ctx->dot_productf(p_vector, p_vector,
                                                          AMRWB_SFR_SIZE) *
                    p_gain * p_gain;
    double f_ener = (double) ctx->dot_productf(f_vector, f_vector,
                                                          AMRWB_SFR_SIZE) *
                    f_gain * f_gain;

    return (p_ener - f_ener) / (p_ener + f_ener + 0.01);
}
