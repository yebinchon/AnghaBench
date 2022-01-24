#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_6__ {size_t cSize; size_t dstFlushed; scalar_t__ consumed; int /*<<< orphan*/  job_mutex; TYPE_1__ src; } ;
typedef  TYPE_2__ ZSTDMT_jobDescription ;
struct TYPE_7__ {unsigned int doneJobID; unsigned int const nextJobID; unsigned int const jobIDMask; TYPE_2__* jobs; } ;
typedef  TYPE_3__ ZSTDMT_CCtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

size_t FUNC4(ZSTDMT_CCtx* mtctx)
{
    size_t toFlush;
    unsigned const jobID = mtctx->doneJobID;
    FUNC3(jobID <= mtctx->nextJobID);
    if (jobID == mtctx->nextJobID) return 0;   /* no active job => nothing to flush */

    /* look into oldest non-fully-flushed job */
    {   unsigned const wJobID = jobID & mtctx->jobIDMask;
        ZSTDMT_jobDescription* const jobPtr = &mtctx->jobs[wJobID];
        FUNC1(&jobPtr->job_mutex);
        {   size_t const cResult = jobPtr->cSize;
            size_t const produced = FUNC0(cResult) ? 0 : cResult;
            size_t const flushed = FUNC0(cResult) ? 0 : jobPtr->dstFlushed;
            FUNC3(flushed <= produced);
            toFlush = produced - flushed;
            if (toFlush==0 && (jobPtr->consumed >= jobPtr->src.size)) {
                /* doneJobID is not-fully-flushed, but toFlush==0 : doneJobID should be compressing some more data */
                FUNC3(jobPtr->consumed < jobPtr->src.size);
            }
        }
        FUNC2(&mtctx->jobs[wJobID].job_mutex);
    }

    return toFlush;
}