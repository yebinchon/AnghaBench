
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN76496 {int* Register; int SampleRate; int* Output; int RNG; int UpdateStep; int * Count; int * Period; scalar_t__ LastRegister; scalar_t__* Volume; } ;


 int NG_PRESET ;
 int SN76496_set_clock (struct SN76496*,int) ;
 int SN76496_set_gain (struct SN76496*,int ) ;
 struct SN76496 ono_sn ;
 int* sn76496_regs ;

int SN76496_init(int clock,int sample_rate)
{
 struct SN76496 *R = &ono_sn;
 int i;


 sn76496_regs = R->Register;

 R->SampleRate = sample_rate;
 SN76496_set_clock(R,clock);

 for (i = 0;i < 4;i++) R->Volume[i] = 0;

 R->LastRegister = 0;
 for (i = 0;i < 8;i+=2)
 {
  R->Register[i] = 0;
  R->Register[i + 1] = 0x0f;
 }

 for (i = 0;i < 4;i++)
 {
  R->Output[i] = 0;
  R->Period[i] = R->Count[i] = R->UpdateStep;
 }
 R->RNG = NG_PRESET;
 R->Output[3] = R->RNG & 1;


 SN76496_set_gain(R, 0);

 return 0;
}
