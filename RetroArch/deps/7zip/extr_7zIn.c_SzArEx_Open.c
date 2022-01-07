
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SRes ;
typedef int ISzAlloc ;
typedef int ILookInStream ;
typedef int CSzArEx ;


 scalar_t__ SZ_OK ;
 int SzArEx_Free (int *,int *) ;
 scalar_t__ SzArEx_Open2 (int *,int *,int *,int *) ;

SRes SzArEx_Open(CSzArEx *p, ILookInStream *inStream, ISzAlloc *allocMain, ISzAlloc *allocTemp)
{
   SRes res = SzArEx_Open2(p, inStream, allocMain, allocTemp);
   if (res != SZ_OK)
      SzArEx_Free(p, allocMain);
   return res;
}
