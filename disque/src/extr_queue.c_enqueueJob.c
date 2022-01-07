
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int flags; int jobs_in; int atime; int sl; } ;
typedef TYPE_1__ queue ;
struct TYPE_12__ {scalar_t__ state; scalar_t__ qtime; int retry; int flags; int queue; int num_deliv; int num_nacks; int id; } ;
typedef TYPE_2__ job ;
struct TYPE_13__ {scalar_t__ mstime; int unixtime; } ;


 unsigned char CLUSTERMSG_FLAG0_INCR_DELIV ;
 unsigned char CLUSTERMSG_FLAG0_INCR_NACKS ;
 int C_ERR ;
 int C_OK ;
 int DISQUE_TIME_ERR ;
 int JOB_FLAG_BCAST_QUEUED ;
 int JOB_FLAG_BCAST_WILLQUEUE ;
 int JOB_FLAG_DELIVERED ;
 int JOB_ID_LEN ;
 scalar_t__ JOB_STATE_QUEUED ;
 int LL_VERBOSE ;
 int QUEUE_FLAG_PAUSED_OUT ;
 int clusterBroadcastQueued (TYPE_2__*,unsigned char) ;
 TYPE_1__* createQueue (int ) ;
 TYPE_1__* lookupQueue (int ) ;
 scalar_t__ randomTimeError (int ) ;
 TYPE_6__ server ;
 int serverAssert (int ) ;
 int serverLog (int ,char*,int ,int ) ;
 int signalQueueAsReady (TYPE_1__*) ;
 int * skiplistInsert (int ,TYPE_2__*) ;
 int updateJobAwakeTime (TYPE_2__*,int ) ;

int enqueueJob(job *job, int nack) {
    if (job->state == JOB_STATE_QUEUED || job->qtime == 0) return C_ERR;
    if (job->retry == 0 && job->flags & JOB_FLAG_DELIVERED) return C_ERR;

    serverLog(LL_VERBOSE,"QUEUED %.*s", JOB_ID_LEN, job->id);

    job->state = JOB_STATE_QUEUED;


    if (job->retry) {
        job->flags |= JOB_FLAG_BCAST_WILLQUEUE;
        job->qtime = server.mstime +
                     job->retry*1000 +
                     randomTimeError(DISQUE_TIME_ERR);
    } else {
        job->qtime = 0;
    }





    if (job->flags & JOB_FLAG_BCAST_QUEUED || nack) {
        unsigned char flags = nack ? CLUSTERMSG_FLAG0_INCR_NACKS :
                                     CLUSTERMSG_FLAG0_INCR_DELIV;
        clusterBroadcastQueued(job, flags);



        if (nack)
            job->num_nacks++;
        else
            job->num_deliv++;
    } else {
        job->flags |= JOB_FLAG_BCAST_QUEUED;
    }

    updateJobAwakeTime(job,0);
    queue *q = lookupQueue(job->queue);
    if (!q) q = createQueue(job->queue);
    serverAssert(skiplistInsert(q->sl,job) != ((void*)0));
    q->atime = server.unixtime;
    q->jobs_in++;
    if (!(q->flags & QUEUE_FLAG_PAUSED_OUT)) signalQueueAsReady(q);
    return C_OK;
}
