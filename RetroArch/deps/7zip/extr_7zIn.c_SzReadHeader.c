
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef int CSzData ;
typedef int CSzArEx ;


 int IAlloc_Free (int *,int *) ;
 int SzReadHeader2 (int *,int *,int **,int **,int **,int **,int **,int **,int *,int *) ;

__attribute__((used)) static SRes SzReadHeader(
      CSzArEx *p,
      CSzData *sd,
      ISzAlloc *allocMain,
      ISzAlloc *allocTemp)
{
   uint64_t *unpackSizes = 0;
   uint8_t *digestsDefined = 0;
   uint32_t *digests = 0;
   uint8_t *emptyStreamVector = 0;
   uint8_t *emptyFileVector = 0;
   uint8_t *lwtVector = 0;
   SRes res = SzReadHeader2(p, sd,
         &unpackSizes, &digestsDefined, &digests,
         &emptyStreamVector, &emptyFileVector, &lwtVector,
         allocMain, allocTemp);
   IAlloc_Free(allocTemp, unpackSizes);
   IAlloc_Free(allocTemp, digestsDefined);
   IAlloc_Free(allocTemp, digests);
   IAlloc_Free(allocTemp, emptyStreamVector);
   IAlloc_Free(allocTemp, emptyFileVector);
   IAlloc_Free(allocTemp, lwtVector);
   return res;
}
