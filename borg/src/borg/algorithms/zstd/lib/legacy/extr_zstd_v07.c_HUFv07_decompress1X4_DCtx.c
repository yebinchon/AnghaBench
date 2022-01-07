
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUFv07_DTable ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t HUFv07_decompress1X4_usingDTable_internal (void*,size_t,int const*,size_t,int *) ;
 scalar_t__ HUFv07_isError (size_t const) ;
 size_t HUFv07_readDTableX4 (int *,void const*,size_t) ;
 int srcSize_wrong ;

size_t HUFv07_decompress1X4_DCtx (HUFv07_DTable* DCtx, void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize)
{
    const BYTE* ip = (const BYTE*) cSrc;

    size_t const hSize = HUFv07_readDTableX4 (DCtx, cSrc, cSrcSize);
    if (HUFv07_isError(hSize)) return hSize;
    if (hSize >= cSrcSize) return ERROR(srcSize_wrong);
    ip += hSize; cSrcSize -= hSize;

    return HUFv07_decompress1X4_usingDTable_internal (dst, dstSize, ip, cSrcSize, DCtx);
}
