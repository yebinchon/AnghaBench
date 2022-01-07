
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t size; scalar_t__ start; } ;
typedef TYPE_2__ range_t ;
struct TYPE_9__ {unsigned int doneJobID; unsigned int nextJobID; unsigned int jobIDMask; TYPE_1__* jobs; } ;
typedef TYPE_3__ ZSTDMT_CCtx ;
struct TYPE_7__ {size_t consumed; TYPE_2__ src; TYPE_2__ prefix; int job_mutex; } ;


 int ZSTD_PTHREAD_MUTEX_LOCK (int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;
 int assert (int) ;
 TYPE_2__ kNullRange ;

__attribute__((used)) static range_t ZSTDMT_getInputDataInUse(ZSTDMT_CCtx* mtctx)
{
    unsigned const firstJobID = mtctx->doneJobID;
    unsigned const lastJobID = mtctx->nextJobID;
    unsigned jobID;

    for (jobID = firstJobID; jobID < lastJobID; ++jobID) {
        unsigned const wJobID = jobID & mtctx->jobIDMask;
        size_t consumed;

        ZSTD_PTHREAD_MUTEX_LOCK(&mtctx->jobs[wJobID].job_mutex);
        consumed = mtctx->jobs[wJobID].consumed;
        ZSTD_pthread_mutex_unlock(&mtctx->jobs[wJobID].job_mutex);

        if (consumed < mtctx->jobs[wJobID].src.size) {
            range_t range = mtctx->jobs[wJobID].prefix;
            if (range.size == 0) {

                range = mtctx->jobs[wJobID].src;
            }

            assert(range.start <= mtctx->jobs[wJobID].src.start);
            return range;
        }
    }
    return kNullRange;
}
