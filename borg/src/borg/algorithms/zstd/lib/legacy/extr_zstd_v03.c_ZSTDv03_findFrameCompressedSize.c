
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTD_findFrameCompressedSize (void const*,size_t) ;

size_t ZSTDv03_findFrameCompressedSize(const void* src, size_t srcSize)
{
    return ZSTD_findFrameCompressedSize(src, srcSize);
}
