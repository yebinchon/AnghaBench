
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ERROR (int ) ;
 int dstSize_tooSmall ;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static size_t ZSTDv05_copyRawBlock(void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    if (dst==((void*)0)) return ERROR(dstSize_tooSmall);
    if (srcSize > maxDstSize) return ERROR(dstSize_tooSmall);
    memcpy(dst, src, srcSize);
    return srcSize;
}
