
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 scalar_t__ MEM_readLE32 (int const*) ;
 int ZSTD_FRAMEIDSIZE ;
 size_t ZSTD_SKIPPABLEHEADERSIZE ;
 int frameParameter_unsupported ;
 int srcSize_wrong ;

__attribute__((used)) static size_t readSkippableFrameSize(void const* src, size_t srcSize)
{
    size_t const skippableHeaderSize = ZSTD_SKIPPABLEHEADERSIZE;
    U32 sizeU32;

    if (srcSize < ZSTD_SKIPPABLEHEADERSIZE)
        return ERROR(srcSize_wrong);

    sizeU32 = MEM_readLE32((BYTE const*)src + ZSTD_FRAMEIDSIZE);
    if ((U32)(sizeU32 + ZSTD_SKIPPABLEHEADERSIZE) < sizeU32)
        return ERROR(frameParameter_unsupported);

    return skippableHeaderSize + sizeU32;
}
