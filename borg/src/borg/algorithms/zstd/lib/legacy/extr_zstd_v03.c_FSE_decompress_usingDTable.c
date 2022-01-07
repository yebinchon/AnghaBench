
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fastMode; } ;
typedef TYPE_1__ FSE_DTableHeader ;
typedef int FSE_DTable ;
typedef int DTableH ;


 size_t FSE_decompress_usingDTable_generic (void*,size_t,void const*,size_t,int const*,int) ;
 int memcpy (TYPE_1__*,int const*,int) ;

__attribute__((used)) static size_t FSE_decompress_usingDTable(void* dst, size_t originalSize,
                            const void* cSrc, size_t cSrcSize,
                            const FSE_DTable* dt)
{
    FSE_DTableHeader DTableH;
    memcpy(&DTableH, dt, sizeof(DTableH));


    if (DTableH.fastMode) return FSE_decompress_usingDTable_generic(dst, originalSize, cSrc, cSrcSize, dt, 1);
    return FSE_decompress_usingDTable_generic(dst, originalSize, cSrc, cSrcSize, dt, 0);
}
