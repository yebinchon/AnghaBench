
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int EXI_Probe (int ) ;

s32 CARD_Probe(s32 chn)
{
 return EXI_Probe(chn);
}
