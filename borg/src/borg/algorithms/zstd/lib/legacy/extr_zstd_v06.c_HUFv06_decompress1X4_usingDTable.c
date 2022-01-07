
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int HUFv06_DEltX4 ;
typedef int BYTE ;
typedef int BITv06_DStream_t ;


 int BITv06_endOfDStream (int *) ;
 size_t BITv06_initDStream (int *,int const* const,size_t) ;
 size_t ERROR (int ) ;
 int HUFv06_decodeStreamX4 (int * const,int *,int * const,int const* const,int const) ;
 scalar_t__ HUFv06_isError (size_t const) ;
 int corruption_detected ;

size_t HUFv06_decompress1X4_usingDTable(
          void* dst, size_t dstSize,
    const void* cSrc, size_t cSrcSize,
    const U32* DTable)
{
    const BYTE* const istart = (const BYTE*) cSrc;
    BYTE* const ostart = (BYTE*) dst;
    BYTE* const oend = ostart + dstSize;

    const U32 dtLog = DTable[0];
    const void* const dtPtr = DTable;
    const HUFv06_DEltX4* const dt = ((const HUFv06_DEltX4*)dtPtr) +1;


    BITv06_DStream_t bitD;
    { size_t const errorCode = BITv06_initDStream(&bitD, istart, cSrcSize);
      if (HUFv06_isError(errorCode)) return errorCode; }


    HUFv06_decodeStreamX4(ostart, &bitD, oend, dt, dtLog);


    if (!BITv06_endOfDStream(&bitD)) return ERROR(corruption_detected);


    return dstSize;
}
