#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * customFree; int /*<<< orphan*/ * customAlloc; } ;
typedef  TYPE_1__ ZSTD_customMem ;
struct TYPE_13__ {int allJobsCompleted; int jobIDMask; int /*<<< orphan*/  seqPool; int /*<<< orphan*/  cctxPool; int /*<<< orphan*/  bufPool; int /*<<< orphan*/  jobs; int /*<<< orphan*/  factory; int /*<<< orphan*/  roundBuff; int /*<<< orphan*/  serial; TYPE_1__ cMem; int /*<<< orphan*/  params; } ;
typedef  TYPE_2__ ZSTDMT_CCtx ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  ZSTDMT_NBWORKERS_MAX ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  kNullRoundBuff ; 

ZSTDMT_CCtx* FUNC12(unsigned nbWorkers, ZSTD_customMem cMem)
{
    ZSTDMT_CCtx* mtctx;
    U32 nbJobs = nbWorkers + 2;
    int initError;
    FUNC0(3, "ZSTDMT_createCCtx_advanced (nbWorkers = %u)", nbWorkers);

    if (nbWorkers < 1) return NULL;
    nbWorkers = FUNC1(nbWorkers , ZSTDMT_NBWORKERS_MAX);
    if ((cMem.customAlloc!=NULL) ^ (cMem.customFree!=NULL))
        /* invalid custom allocator */
        return NULL;

    mtctx = (ZSTDMT_CCtx*) FUNC10(sizeof(ZSTDMT_CCtx), cMem);
    if (!mtctx) return NULL;
    FUNC3(&mtctx->params, nbWorkers);
    mtctx->cMem = cMem;
    mtctx->allJobsCompleted = 1;
    mtctx->factory = FUNC2(nbWorkers, 0, cMem);
    mtctx->jobs = FUNC6(&nbJobs, cMem);
    FUNC11(nbJobs > 0); FUNC11((nbJobs & (nbJobs - 1)) == 0);  /* ensure nbJobs is a power of 2 */
    mtctx->jobIDMask = nbJobs - 1;
    mtctx->bufPool = FUNC4(nbWorkers, cMem);
    mtctx->cctxPool = FUNC5(nbWorkers, cMem);
    mtctx->seqPool = FUNC7(nbWorkers, cMem);
    initError = FUNC9(&mtctx->serial);
    mtctx->roundBuff = kNullRoundBuff;
    if (!mtctx->factory | !mtctx->jobs | !mtctx->bufPool | !mtctx->cctxPool | !mtctx->seqPool | initError) {
        FUNC8(mtctx);
        return NULL;
    }
    FUNC0(3, "mt_cctx created, for %u threads", nbWorkers);
    return mtctx;
}