
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ capacity; int * start; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {int lastJob; scalar_t__ firstJob; scalar_t__ consumed; int cSize; TYPE_4__ dstBuff; TYPE_2__ src; int bufPool; } ;
typedef TYPE_1__ ZSTDMT_jobDescription ;


 int ERROR (int ) ;
 TYPE_4__ ZSTDMT_getBuffer (int ) ;
 scalar_t__ ZSTD_blockHeaderSize ;
 int ZSTD_isError (int ) ;
 int ZSTD_writeLastEmptyBlock (int *,scalar_t__) ;
 int assert (int) ;
 TYPE_2__ kNullRange ;
 int memory_allocation ;

__attribute__((used)) static void ZSTDMT_writeLastEmptyBlock(ZSTDMT_jobDescription* job)
{
    assert(job->lastJob == 1);
    assert(job->src.size == 0);
    assert(job->firstJob == 0);
    assert(job->dstBuff.start == ((void*)0));
    job->dstBuff = ZSTDMT_getBuffer(job->bufPool);
    if (job->dstBuff.start == ((void*)0)) {
      job->cSize = ERROR(memory_allocation);
      return;
    }
    assert(job->dstBuff.capacity >= ZSTD_blockHeaderSize);
    job->src = kNullRange;
    job->cSize = ZSTD_writeLastEmptyBlock(job->dstBuff.start, job->dstBuff.capacity);
    assert(!ZSTD_isError(job->cSize));
    assert(job->consumed == 0);
}
