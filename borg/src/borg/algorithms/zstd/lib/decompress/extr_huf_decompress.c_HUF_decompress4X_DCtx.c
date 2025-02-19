
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int HUF_DTable ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t HUF_decompress4X1_DCtx (int *,void*,size_t,void const*,size_t) ;
 size_t HUF_decompress4X2_DCtx (int *,void*,size_t,void const*,size_t) ;
 int HUF_selectDecoder (size_t,size_t) ;
 int assert (int) ;
 int corruption_detected ;
 int dstSize_tooSmall ;
 int memcpy (void*,void const*,size_t) ;
 int memset (void*,int const,size_t) ;

size_t HUF_decompress4X_DCtx (HUF_DTable* dctx, void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize)
{

    if (dstSize == 0) return ERROR(dstSize_tooSmall);
    if (cSrcSize > dstSize) return ERROR(corruption_detected);
    if (cSrcSize == dstSize) { memcpy(dst, cSrc, dstSize); return dstSize; }
    if (cSrcSize == 1) { memset(dst, *(const BYTE*)cSrc, dstSize); return dstSize; }

    { U32 const algoNb = HUF_selectDecoder(dstSize, cSrcSize);
        return algoNb ? HUF_decompress4X2_DCtx(dctx, dst, dstSize, cSrc, cSrcSize) :
                        HUF_decompress4X1_DCtx(dctx, dst, dstSize, cSrc, cSrcSize) ;

    }
}
