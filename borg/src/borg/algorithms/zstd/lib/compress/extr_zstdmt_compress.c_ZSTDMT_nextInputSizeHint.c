
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t filled; } ;
struct TYPE_5__ {size_t targetSectionSize; TYPE_1__ inBuff; } ;
typedef TYPE_2__ ZSTDMT_CCtx ;



size_t ZSTDMT_nextInputSizeHint(const ZSTDMT_CCtx* mtctx)
{
    size_t hintInSize = mtctx->targetSectionSize - mtctx->inBuff.filled;
    if (hintInSize==0) hintInSize = mtctx->targetSectionSize;
    return hintInSize;
}
