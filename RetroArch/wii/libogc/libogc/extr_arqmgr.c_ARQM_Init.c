
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s32 ;


 int ARQM_PushData (scalar_t__,int) ;
 int ARQM_ZEROBYTES ;
 scalar_t__ __ARQMFreeBytes ;
 scalar_t__ __ARQMStackLocation ;
 int* __ARQMStackPointer ;
 scalar_t__ __ARQMZeroBuffer ;

void ARQM_Init(u32 arambase,s32 len)
{
 u32 i;

 if(len<=0) return;

 __ARQMStackLocation = 0;
 __ARQMStackPointer[0] = arambase;
 __ARQMFreeBytes = len;

 for(i=0;i<ARQM_ZEROBYTES/sizeof(u32);i++) ((u32*)__ARQMZeroBuffer)[i] = 0;
 ARQM_PushData(__ARQMZeroBuffer,ARQM_ZEROBYTES);

}
