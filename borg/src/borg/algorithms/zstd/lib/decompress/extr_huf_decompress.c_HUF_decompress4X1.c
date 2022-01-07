
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTable ;
 int HUF_CREATE_STATIC_DTABLEX1 (int ,int ) ;
 int HUF_TABLELOG_MAX ;
 size_t HUF_decompress4X1_DCtx (int ,void*,size_t,void const*,size_t) ;

size_t HUF_decompress4X1 (void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize)
{
    HUF_CREATE_STATIC_DTABLEX1(DTable, HUF_TABLELOG_MAX);
    return HUF_decompress4X1_DCtx(DTable, dst, dstSize, cSrc, cSrcSize);
}
