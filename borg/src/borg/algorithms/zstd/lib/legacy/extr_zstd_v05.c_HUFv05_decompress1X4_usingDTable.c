
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int U32 ;
typedef int HUFv05_DEltX4 ;
typedef int BYTE ;
typedef int BITv05_DStream_t ;


 int BITv05_endOfDStream (int *) ;
 size_t BITv05_initDStream (int *,int const* const,size_t) ;
 size_t ERROR (int ) ;
 int HUFv05_decodeStreamX4 (int * const,int *,int * const,int const* const,unsigned int const) ;
 scalar_t__ HUFv05_isError (size_t) ;
 int corruption_detected ;

size_t HUFv05_decompress1X4_usingDTable(
          void* dst, size_t dstSize,
    const void* cSrc, size_t cSrcSize,
    const unsigned* DTable)
{
    const BYTE* const istart = (const BYTE*) cSrc;
    BYTE* const ostart = (BYTE*) dst;
    BYTE* const oend = ostart + dstSize;

    const U32 dtLog = DTable[0];
    const void* const dtPtr = DTable;
    const HUFv05_DEltX4* const dt = ((const HUFv05_DEltX4*)dtPtr) +1;
    size_t errorCode;


    BITv05_DStream_t bitD;
    errorCode = BITv05_initDStream(&bitD, istart, cSrcSize);
    if (HUFv05_isError(errorCode)) return errorCode;


    HUFv05_decodeStreamX4(ostart, &bitD, oend, dt, dtLog);


    if (!BITv05_endOfDStream(&bitD)) return ERROR(corruption_detected);


    return dstSize;
}
