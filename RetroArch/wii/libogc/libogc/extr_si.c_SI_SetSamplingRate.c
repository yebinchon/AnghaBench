
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct _xy {int line; int cnt; } ;


 int SI_SetXY (int,int ) ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 struct _xy* __si_getxy () ;
 int* _viReg ;
 int sampling_rate ;

void SI_SetSamplingRate(u32 samplingrate)
{
 u32 div,level;
 struct _xy *xy = ((void*)0);

 if(samplingrate>11) samplingrate = 11;

 _CPU_ISR_Disable(level);
 sampling_rate = samplingrate;
 xy = __si_getxy();

 div = 1;
 if(_viReg[54]&0x0001) div = 2;

 SI_SetXY(div*xy[samplingrate].line,xy[samplingrate].cnt);
 _CPU_ISR_Restore(level);
}
