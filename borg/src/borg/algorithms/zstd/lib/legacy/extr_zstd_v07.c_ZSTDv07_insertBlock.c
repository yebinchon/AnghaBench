
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* previousDstEnd; } ;
typedef TYPE_1__ ZSTDv07_DCtx ;


 int ZSTDv07_checkContinuity (TYPE_1__*,void const*) ;

size_t ZSTDv07_insertBlock(ZSTDv07_DCtx* dctx, const void* blockStart, size_t blockSize)
{
    ZSTDv07_checkContinuity(dctx, blockStart);
    dctx->previousDstEnd = (const char*)blockStart + blockSize;
    return blockSize;
}
