
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int EXI_GetID (int,int,int *) ;

__attribute__((used)) static s32 __unlocked_handler(s32 nChn,s32 nDev)
{
 u32 nId;
 EXI_GetID(nChn,nDev,&nId);
 return 1;
}
