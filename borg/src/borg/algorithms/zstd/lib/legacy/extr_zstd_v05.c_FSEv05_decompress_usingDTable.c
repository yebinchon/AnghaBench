
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_2__ {scalar_t__ fastMode; } ;
typedef TYPE_1__ FSEv05_DTableHeader ;
typedef int FSEv05_DTable ;


 size_t FSEv05_decompress_usingDTable_generic (void*,size_t,void const*,size_t,int const*,int) ;

size_t FSEv05_decompress_usingDTable(void* dst, size_t originalSize,
                            const void* cSrc, size_t cSrcSize,
                            const FSEv05_DTable* dt)
{
    const void* ptr = dt;
    const FSEv05_DTableHeader* DTableH = (const FSEv05_DTableHeader*)ptr;
    const U32 fastMode = DTableH->fastMode;


    if (fastMode) return FSEv05_decompress_usingDTable_generic(dst, originalSize, cSrc, cSrcSize, dt, 1);
    return FSEv05_decompress_usingDTable_generic(dst, originalSize, cSrc, cSrcSize, dt, 0);
}
