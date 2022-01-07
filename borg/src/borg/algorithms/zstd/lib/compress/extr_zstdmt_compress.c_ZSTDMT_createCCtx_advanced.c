
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int * customFree; int * customAlloc; } ;
typedef TYPE_1__ ZSTD_customMem ;
struct TYPE_13__ {int allJobsCompleted; int jobIDMask; int seqPool; int cctxPool; int bufPool; int jobs; int factory; int roundBuff; int serial; TYPE_1__ cMem; int params; } ;
typedef TYPE_2__ ZSTDMT_CCtx ;
typedef int U32 ;


 int DEBUGLOG (int,char*,unsigned int) ;
 unsigned int MIN (unsigned int,int ) ;
 int POOL_create_advanced (unsigned int,int ,TYPE_1__) ;
 int ZSTDMT_CCtxParam_setNbWorkers (int *,unsigned int) ;
 int ZSTDMT_NBWORKERS_MAX ;
 int ZSTDMT_createBufferPool (unsigned int,TYPE_1__) ;
 int ZSTDMT_createCCtxPool (unsigned int,TYPE_1__) ;
 int ZSTDMT_createJobsTable (int*,TYPE_1__) ;
 int ZSTDMT_createSeqPool (unsigned int,TYPE_1__) ;
 int ZSTDMT_freeCCtx (TYPE_2__*) ;
 int ZSTDMT_serialState_init (int *) ;
 scalar_t__ ZSTD_calloc (int,TYPE_1__) ;
 int assert (int) ;
 int kNullRoundBuff ;

ZSTDMT_CCtx* ZSTDMT_createCCtx_advanced(unsigned nbWorkers, ZSTD_customMem cMem)
{
    ZSTDMT_CCtx* mtctx;
    U32 nbJobs = nbWorkers + 2;
    int initError;
    DEBUGLOG(3, "ZSTDMT_createCCtx_advanced (nbWorkers = %u)", nbWorkers);

    if (nbWorkers < 1) return ((void*)0);
    nbWorkers = MIN(nbWorkers , ZSTDMT_NBWORKERS_MAX);
    if ((cMem.customAlloc!=((void*)0)) ^ (cMem.customFree!=((void*)0)))

        return ((void*)0);

    mtctx = (ZSTDMT_CCtx*) ZSTD_calloc(sizeof(ZSTDMT_CCtx), cMem);
    if (!mtctx) return ((void*)0);
    ZSTDMT_CCtxParam_setNbWorkers(&mtctx->params, nbWorkers);
    mtctx->cMem = cMem;
    mtctx->allJobsCompleted = 1;
    mtctx->factory = POOL_create_advanced(nbWorkers, 0, cMem);
    mtctx->jobs = ZSTDMT_createJobsTable(&nbJobs, cMem);
    assert(nbJobs > 0); assert((nbJobs & (nbJobs - 1)) == 0);
    mtctx->jobIDMask = nbJobs - 1;
    mtctx->bufPool = ZSTDMT_createBufferPool(nbWorkers, cMem);
    mtctx->cctxPool = ZSTDMT_createCCtxPool(nbWorkers, cMem);
    mtctx->seqPool = ZSTDMT_createSeqPool(nbWorkers, cMem);
    initError = ZSTDMT_serialState_init(&mtctx->serial);
    mtctx->roundBuff = kNullRoundBuff;
    if (!mtctx->factory | !mtctx->jobs | !mtctx->bufPool | !mtctx->cctxPool | !mtctx->seqPool | initError) {
        ZSTDMT_freeCCtx(mtctx);
        return ((void*)0);
    }
    DEBUGLOG(3, "mt_cctx created, for %u threads", nbWorkers);
    return mtctx;
}
