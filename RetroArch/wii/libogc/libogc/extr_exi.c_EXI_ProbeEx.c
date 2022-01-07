
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int EXI_Probe (int) ;
 scalar_t__* last_exi_idtime ;

s32 EXI_ProbeEx(s32 nChn)
{
 if(EXI_Probe(nChn)==1) return 1;
 if(last_exi_idtime[nChn]==0) return -1;
 return 0;
}
