
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_6__ {size_t cSize; size_t dstFlushed; scalar_t__ consumed; int job_mutex; TYPE_1__ src; } ;
typedef TYPE_2__ ZSTDMT_jobDescription ;
struct TYPE_7__ {unsigned int doneJobID; unsigned int const nextJobID; unsigned int const jobIDMask; TYPE_2__* jobs; } ;
typedef TYPE_3__ ZSTDMT_CCtx ;


 scalar_t__ ZSTD_isError (size_t const) ;
 int ZSTD_pthread_mutex_lock (int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;
 int assert (int) ;

size_t ZSTDMT_toFlushNow(ZSTDMT_CCtx* mtctx)
{
    size_t toFlush;
    unsigned const jobID = mtctx->doneJobID;
    assert(jobID <= mtctx->nextJobID);
    if (jobID == mtctx->nextJobID) return 0;


    { unsigned const wJobID = jobID & mtctx->jobIDMask;
        ZSTDMT_jobDescription* const jobPtr = &mtctx->jobs[wJobID];
        ZSTD_pthread_mutex_lock(&jobPtr->job_mutex);
        { size_t const cResult = jobPtr->cSize;
            size_t const produced = ZSTD_isError(cResult) ? 0 : cResult;
            size_t const flushed = ZSTD_isError(cResult) ? 0 : jobPtr->dstFlushed;
            assert(flushed <= produced);
            toFlush = produced - flushed;
            if (toFlush==0 && (jobPtr->consumed >= jobPtr->src.size)) {

                assert(jobPtr->consumed < jobPtr->src.size);
            }
        }
        ZSTD_pthread_mutex_unlock(&mtctx->jobs[wJobID].job_mutex);
    }

    return toFlush;
}
