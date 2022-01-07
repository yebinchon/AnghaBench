
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int MEM_readLE32 (void const*) ;
 size_t ZSTD_FRAMEIDSIZE ;
 int const ZSTD_MAGICNUMBER ;
 int const ZSTD_MAGIC_SKIPPABLE_MASK ;
 int const ZSTD_MAGIC_SKIPPABLE_START ;
 scalar_t__ ZSTD_isLegacy (void const*,size_t) ;

unsigned ZSTD_isFrame(const void* buffer, size_t size)
{
    if (size < ZSTD_FRAMEIDSIZE) return 0;
    { U32 const magic = MEM_readLE32(buffer);
        if (magic == ZSTD_MAGICNUMBER) return 1;
        if ((magic & ZSTD_MAGIC_SKIPPABLE_MASK) == ZSTD_MAGIC_SKIPPABLE_START) return 1;
    }



    return 0;
}
