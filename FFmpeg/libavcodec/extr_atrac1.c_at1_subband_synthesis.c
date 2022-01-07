
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {float** bands; } ;
struct TYPE_5__ {float* last_qmf_delay; int snd_qmf_delay; int fst_qmf_delay; } ;
typedef TYPE_1__ AT1SUCtx ;
typedef TYPE_2__ AT1Ctx ;


 int ff_atrac_iqmf (float*,float*,int,float*,int ,float*) ;
 int memcpy (float*,float*,int) ;

__attribute__((used)) static void at1_subband_synthesis(AT1Ctx *q, AT1SUCtx* su, float *pOut)
{
    float temp[256];
    float iqmf_temp[512 + 46];


    ff_atrac_iqmf(q->bands[0], q->bands[1], 128, temp, su->fst_qmf_delay, iqmf_temp);


    memcpy( su->last_qmf_delay, &su->last_qmf_delay[256], sizeof(float) * 39);
    memcpy(&su->last_qmf_delay[39], q->bands[2], sizeof(float) * 256);


    ff_atrac_iqmf(temp, su->last_qmf_delay, 256, pOut, su->snd_qmf_delay, iqmf_temp);
}
