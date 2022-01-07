
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int params; int * seqPool; int * cctxPool; int * bufPool; int factory; } ;
typedef TYPE_1__ ZSTDMT_CCtx ;


 int CHECK_F (int ) ;
 size_t ERROR (int ) ;
 scalar_t__ POOL_resize (int ,unsigned int) ;
 int ZSTDMT_CCtxParam_setNbWorkers (int *,unsigned int) ;
 int * ZSTDMT_expandBufferPool (int *,unsigned int) ;
 int * ZSTDMT_expandCCtxPool (int *,unsigned int) ;
 int ZSTDMT_expandJobsTable (TYPE_1__*,unsigned int) ;
 int * ZSTDMT_expandSeqPool (int *,unsigned int) ;
 int memory_allocation ;

__attribute__((used)) static size_t ZSTDMT_resize(ZSTDMT_CCtx* mtctx, unsigned nbWorkers)
{
    if (POOL_resize(mtctx->factory, nbWorkers)) return ERROR(memory_allocation);
    CHECK_F( ZSTDMT_expandJobsTable(mtctx, nbWorkers) );
    mtctx->bufPool = ZSTDMT_expandBufferPool(mtctx->bufPool, nbWorkers);
    if (mtctx->bufPool == ((void*)0)) return ERROR(memory_allocation);
    mtctx->cctxPool = ZSTDMT_expandCCtxPool(mtctx->cctxPool, nbWorkers);
    if (mtctx->cctxPool == ((void*)0)) return ERROR(memory_allocation);
    mtctx->seqPool = ZSTDMT_expandSeqPool(mtctx->seqPool, nbWorkers);
    if (mtctx->seqPool == ((void*)0)) return ERROR(memory_allocation);
    ZSTDMT_CCtxParam_setNbWorkers(&mtctx->params, nbWorkers);
    return 0;
}
