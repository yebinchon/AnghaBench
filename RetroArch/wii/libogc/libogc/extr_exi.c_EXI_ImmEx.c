
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s32 ;


 int EXI_Imm (int,int *,int,int,int *) ;
 int EXI_Sync (int) ;

s32 EXI_ImmEx(s32 nChn,void *pData,u32 nLen,u32 nMode)
{
 u8 *buf = pData;
 u32 tc;
 s32 ret = 0;
 while(nLen) {
  ret = 0;
  tc = nLen;
  if(tc>4) tc = 4;

  if(!EXI_Imm(nChn,buf,tc,nMode,((void*)0))) break;
  if(!EXI_Sync(nChn)) break;
  nLen -= tc;
  buf += tc;

  ret = 1;
 }
 return ret;
}
