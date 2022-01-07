
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* buffer; } ;
struct TYPE_7__ {int cMem; TYPE_1__ roundBuff; int cdictLocal; int serial; int seqPool; int cctxPool; int bufPool; scalar_t__ jobIDMask; int jobs; int factory; } ;
typedef TYPE_2__ ZSTDMT_CCtx ;


 int POOL_free (int ) ;
 int ZSTDMT_freeBufferPool (int ) ;
 int ZSTDMT_freeCCtxPool (int ) ;
 int ZSTDMT_freeJobsTable (int ,scalar_t__,int ) ;
 int ZSTDMT_freeSeqPool (int ) ;
 int ZSTDMT_releaseAllJobResources (TYPE_2__*) ;
 int ZSTDMT_serialState_free (int *) ;
 int ZSTD_free (TYPE_2__*,int ) ;
 int ZSTD_freeCDict (int ) ;

size_t ZSTDMT_freeCCtx(ZSTDMT_CCtx* mtctx)
{
    if (mtctx==((void*)0)) return 0;
    POOL_free(mtctx->factory);
    ZSTDMT_releaseAllJobResources(mtctx);
    ZSTDMT_freeJobsTable(mtctx->jobs, mtctx->jobIDMask+1, mtctx->cMem);
    ZSTDMT_freeBufferPool(mtctx->bufPool);
    ZSTDMT_freeCCtxPool(mtctx->cctxPool);
    ZSTDMT_freeSeqPool(mtctx->seqPool);
    ZSTDMT_serialState_free(&mtctx->serial);
    ZSTD_freeCDict(mtctx->cdictLocal);
    if (mtctx->roundBuff.buffer)
        ZSTD_free(mtctx->roundBuff.buffer, mtctx->cMem);
    ZSTD_free(mtctx, mtctx->cMem);
    return 0;
}
