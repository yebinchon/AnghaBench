
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef int ILookInStream ;
typedef int CSzData ;
typedef int CSzAr ;
typedef int CBuf ;


 int IAlloc_Free (int *,int *) ;
 int SzAr_Free (int *,int *) ;
 int SzAr_Init (int *) ;
 int SzReadAndDecodePackedStreams2 (int *,int *,int *,int ,int *,int **,int **,int **,int *) ;

__attribute__((used)) static SRes SzReadAndDecodePackedStreams(
      ILookInStream *inStream,
      CSzData *sd,
      CBuf *outBuffer,
      uint64_t baseOffset,
      ISzAlloc *allocTemp)
{
   CSzAr p;
   uint64_t *unpackSizes = 0;
   uint8_t *digestsDefined = 0;
   uint32_t *digests = 0;
   SRes res;
   SzAr_Init(&p);
   res = SzReadAndDecodePackedStreams2(inStream, sd, outBuffer, baseOffset,
         &p, &unpackSizes, &digestsDefined, &digests,
         allocTemp);
   SzAr_Free(&p, allocTemp);
   IAlloc_Free(allocTemp, unpackSizes);
   IAlloc_Free(allocTemp, digestsDefined);
   IAlloc_Free(allocTemp, digests);
   return res;
}
