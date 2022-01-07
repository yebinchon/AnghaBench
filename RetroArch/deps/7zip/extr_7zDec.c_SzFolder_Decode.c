
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef int ILookInStream ;
typedef int CSzFolder ;


 int IAlloc_Free (int *,int *) ;
 int SzFolder_Decode2 (int const*,int const*,int *,int ,int *,size_t,int *,int **) ;

SRes SzFolder_Decode(const CSzFolder *folder, const uint64_t *packSizes,
    ILookInStream *inStream, uint64_t startPos,
    uint8_t *outBuffer, size_t outSize, ISzAlloc *allocMain)
{
  uint8_t *tempBuf[3] = { 0, 0, 0};
  int i;
  SRes res = SzFolder_Decode2(folder, packSizes, inStream, startPos,
      outBuffer, (size_t)outSize, allocMain, tempBuf);
  for (i = 0; i < 3; i++)
    IAlloc_Free(allocMain, tempBuf[i]);
  return res;
}
