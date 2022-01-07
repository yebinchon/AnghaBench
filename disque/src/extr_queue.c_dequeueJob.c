
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sl; } ;
typedef TYPE_1__ queue ;
struct TYPE_7__ {scalar_t__ state; int id; int queue; } ;
typedef TYPE_2__ job ;


 int C_ERR ;
 int C_OK ;
 int JOB_ID_LEN ;
 scalar_t__ JOB_STATE_ACTIVE ;
 scalar_t__ JOB_STATE_QUEUED ;
 int LL_VERBOSE ;
 TYPE_1__* lookupQueue (int ) ;
 int serverAssert (int ) ;
 int serverLog (int ,char*,int ,int ) ;
 int skiplistDelete (int ,TYPE_2__*) ;

int dequeueJob(job *job) {
    if (job->state != JOB_STATE_QUEUED) return C_ERR;
    queue *q = lookupQueue(job->queue);
    if (!q) return C_ERR;
    serverAssert(skiplistDelete(q->sl,job));
    job->state = JOB_STATE_ACTIVE;
    serverLog(LL_VERBOSE,"DE-QUEUED %.*s", JOB_ID_LEN, job->id);
    return C_OK;
}
