
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int U16 ;
typedef int HUFv05_DEltX2 ;
typedef int BYTE ;
typedef int BITv05_DStream_t ;


 int BITv05_endOfDStream (int *) ;
 size_t BITv05_initDStream (int *,void const*,size_t) ;
 size_t ERROR (int ) ;
 int HUFv05_decodeStreamX2 (int *,int *,int * const,int const* const,int const) ;
 scalar_t__ HUFv05_isError (size_t const) ;
 int corruption_detected ;
 int dstSize_tooSmall ;

size_t HUFv05_decompress1X2_usingDTable(
          void* dst, size_t dstSize,
    const void* cSrc, size_t cSrcSize,
    const U16* DTable)
{
    BYTE* op = (BYTE*)dst;
    BYTE* const oend = op + dstSize;
    const U32 dtLog = DTable[0];
    const void* dtPtr = DTable;
    const HUFv05_DEltX2* const dt = ((const HUFv05_DEltX2*)dtPtr)+1;
    BITv05_DStream_t bitD;

    if (dstSize <= cSrcSize) return ERROR(dstSize_tooSmall);
    { size_t const errorCode = BITv05_initDStream(&bitD, cSrc, cSrcSize);
      if (HUFv05_isError(errorCode)) return errorCode; }

    HUFv05_decodeStreamX2(op, &bitD, oend, dt, dtLog);


    if (!BITv05_endOfDStream(&bitD)) return ERROR(corruption_detected);

    return dstSize;
}
