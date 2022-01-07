
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int customMem; scalar_t__ staticSize; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 size_t ERROR (int ) ;
 int ZSTD_free (TYPE_1__*,int ) ;
 int ZSTD_freeCCtxContent (TYPE_1__*) ;
 int memory_allocation ;

size_t ZSTD_freeCCtx(ZSTD_CCtx* cctx)
{
    if (cctx==((void*)0)) return 0;
    if (cctx->staticSize) return ERROR(memory_allocation);
    ZSTD_freeCCtxContent(cctx);
    ZSTD_free(cctx, cctx->customMem);
    return 0;
}
