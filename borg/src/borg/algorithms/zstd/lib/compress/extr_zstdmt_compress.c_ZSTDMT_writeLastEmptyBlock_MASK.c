#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ capacity; int /*<<< orphan*/ * start; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {int lastJob; scalar_t__ firstJob; scalar_t__ consumed; int /*<<< orphan*/  cSize; TYPE_4__ dstBuff; TYPE_2__ src; int /*<<< orphan*/  bufPool; } ;
typedef  TYPE_1__ ZSTDMT_jobDescription ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZSTD_blockHeaderSize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__ kNullRange ; 
 int /*<<< orphan*/  memory_allocation ; 

__attribute__((used)) static void FUNC5(ZSTDMT_jobDescription* job)
{
    FUNC4(job->lastJob == 1);
    FUNC4(job->src.size == 0);   /* last job is empty -> will be simplified into a last empty block */
    FUNC4(job->firstJob == 0);   /* cannot be first job, as it also needs to create frame header */
    FUNC4(job->dstBuff.start == NULL);   /* invoked from streaming variant only (otherwise, dstBuff might be user's output) */
    job->dstBuff = FUNC1(job->bufPool);
    if (job->dstBuff.start == NULL) {
      job->cSize = FUNC0(memory_allocation);
      return;
    }
    FUNC4(job->dstBuff.capacity >= ZSTD_blockHeaderSize);   /* no buffer should ever be that small */
    job->src = kNullRange;
    job->cSize = FUNC3(job->dstBuff.start, job->dstBuff.capacity);
    FUNC4(!FUNC2(job->cSize));
    FUNC4(job->consumed == 0);
}