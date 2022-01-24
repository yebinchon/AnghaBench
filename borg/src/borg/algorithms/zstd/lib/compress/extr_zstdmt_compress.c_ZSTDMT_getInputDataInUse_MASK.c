#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t size; scalar_t__ start; } ;
typedef  TYPE_2__ range_t ;
struct TYPE_9__ {unsigned int doneJobID; unsigned int nextJobID; unsigned int jobIDMask; TYPE_1__* jobs; } ;
typedef  TYPE_3__ ZSTDMT_CCtx ;
struct TYPE_7__ {size_t consumed; TYPE_2__ src; TYPE_2__ prefix; int /*<<< orphan*/  job_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__ kNullRange ; 

__attribute__((used)) static range_t FUNC3(ZSTDMT_CCtx* mtctx)
{
    unsigned const firstJobID = mtctx->doneJobID;
    unsigned const lastJobID = mtctx->nextJobID;
    unsigned jobID;

    for (jobID = firstJobID; jobID < lastJobID; ++jobID) {
        unsigned const wJobID = jobID & mtctx->jobIDMask;
        size_t consumed;

        FUNC0(&mtctx->jobs[wJobID].job_mutex);
        consumed = mtctx->jobs[wJobID].consumed;
        FUNC1(&mtctx->jobs[wJobID].job_mutex);

        if (consumed < mtctx->jobs[wJobID].src.size) {
            range_t range = mtctx->jobs[wJobID].prefix;
            if (range.size == 0) {
                /* Empty prefix */
                range = mtctx->jobs[wJobID].src;
            }
            /* Job source in multiple segments not supported yet */
            FUNC2(range.start <= mtctx->jobs[wJobID].src.start);
            return range;
        }
    }
    return kNullRange;
}