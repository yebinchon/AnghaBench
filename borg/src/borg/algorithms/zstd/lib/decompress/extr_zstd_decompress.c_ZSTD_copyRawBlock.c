
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUGLOG (int,char*) ;
 size_t ERROR (int ) ;
 int dstBuffer_null ;
 int dstSize_tooSmall ;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static size_t ZSTD_copyRawBlock(void* dst, size_t dstCapacity,
                          const void* src, size_t srcSize)
{
    DEBUGLOG(5, "ZSTD_copyRawBlock");
    if (dst == ((void*)0)) {
        if (srcSize == 0) return 0;
        return ERROR(dstBuffer_null);
    }
    if (srcSize > dstCapacity) return ERROR(dstSize_tooSmall);
    memcpy(dst, src, srcSize);
    return srcSize;
}
