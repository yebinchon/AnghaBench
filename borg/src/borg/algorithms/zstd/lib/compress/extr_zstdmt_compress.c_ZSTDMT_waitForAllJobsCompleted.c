
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int doneJobID; unsigned int nextJobID; unsigned int jobIDMask; TYPE_2__* jobs; } ;
typedef TYPE_3__ ZSTDMT_CCtx ;
struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_6__ {scalar_t__ consumed; int job_mutex; int job_cond; TYPE_1__ src; } ;


 int DEBUGLOG (int,char*,...) ;
 int ZSTD_PTHREAD_MUTEX_LOCK (int *) ;
 int ZSTD_pthread_cond_wait (int *,int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;

__attribute__((used)) static void ZSTDMT_waitForAllJobsCompleted(ZSTDMT_CCtx* mtctx)
{
    DEBUGLOG(4, "ZSTDMT_waitForAllJobsCompleted");
    while (mtctx->doneJobID < mtctx->nextJobID) {
        unsigned const jobID = mtctx->doneJobID & mtctx->jobIDMask;
        ZSTD_PTHREAD_MUTEX_LOCK(&mtctx->jobs[jobID].job_mutex);
        while (mtctx->jobs[jobID].consumed < mtctx->jobs[jobID].src.size) {
            DEBUGLOG(4, "waiting for jobCompleted signal from job %u", mtctx->doneJobID);
            ZSTD_pthread_cond_wait(&mtctx->jobs[jobID].job_cond, &mtctx->jobs[jobID].job_mutex);
        }
        ZSTD_pthread_mutex_unlock(&mtctx->jobs[jobID].job_mutex);
        mtctx->doneJobID++;
    }
}
