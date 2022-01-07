
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int flags; } ;
typedef TYPE_1__ queue ;
typedef scalar_t__ mstime_t ;
struct TYPE_15__ {scalar_t__ awakeme; scalar_t__ etime; scalar_t__ state; int flags; scalar_t__ qtime; int retry; int queue; int id; } ;
typedef TYPE_2__ job ;
struct TYPE_16__ {scalar_t__ unixtime; scalar_t__ mstime; } ;


 int DISQUE_TIME_ERR ;
 int JOB_FLAG_BCAST_WILLQUEUE ;
 int JOB_ID_LEN ;
 scalar_t__ JOB_STATE_ACKED ;
 scalar_t__ JOB_STATE_ACTIVE ;
 scalar_t__ JOB_STATE_QUEUED ;
 scalar_t__ JOB_WILLQUEUE_ADVANCE ;
 int LL_VERBOSE ;
 int LL_WARNING ;
 int QUEUE_FLAG_PAUSED_IN ;
 int clusterSendWillQueue (TYPE_2__*) ;
 int enqueueJob (TYPE_2__*,int ) ;
 int freeJob (TYPE_2__*) ;
 int logJobsDebugInfo (int ,char*,TYPE_2__*) ;
 TYPE_1__* lookupQueue (int ) ;
 scalar_t__ randomTimeError (int ) ;
 TYPE_7__ server ;
 int serverLog (int ,char*,int ,int ) ;
 int tryJobGC (TYPE_2__*) ;
 int unregisterJob (TYPE_2__*) ;
 int updateJobAwakeTime (TYPE_2__*,int ) ;
 int updateJobRequeueTime (TYPE_2__*,scalar_t__) ;

void processJob(job *j) {
    mstime_t old_awakeme = j->awakeme;

    logJobsDebugInfo(LL_VERBOSE,"PROCESSING",j);


    if (j->etime <= server.unixtime) {
        serverLog(LL_VERBOSE,"EVICT %.*s", JOB_ID_LEN, j->id);
        unregisterJob(j);
        freeJob(j);
        return;
    }



    if ((j->state == JOB_STATE_ACTIVE ||
         j->state == JOB_STATE_QUEUED) &&
         j->flags & JOB_FLAG_BCAST_WILLQUEUE &&
         j->qtime-JOB_WILLQUEUE_ADVANCE <= server.mstime)
    {
        if (j->state != JOB_STATE_QUEUED) clusterSendWillQueue(j);



        j->flags &= ~JOB_FLAG_BCAST_WILLQUEUE;
        updateJobAwakeTime(j,0);
    }




    if (j->state == JOB_STATE_ACTIVE && j->qtime <= server.mstime) {
        queue *q;
        if (j->retry != 0 &&
            (q = lookupQueue(j->queue)) != ((void*)0) &&
            q->flags & QUEUE_FLAG_PAUSED_IN)
        {
            updateJobRequeueTime(j,server.mstime+
                                 j->retry*1000+
                                 randomTimeError(DISQUE_TIME_ERR));
        } else {
            enqueueJob(j,0);
        }
    }


    if (j->state == JOB_STATE_QUEUED && j->qtime <= server.mstime &&
        j->retry)
    {
        j->flags |= JOB_FLAG_BCAST_WILLQUEUE;
        j->qtime = server.mstime +
                   j->retry*1000 +
                   randomTimeError(DISQUE_TIME_ERR);
        updateJobAwakeTime(j,0);
    }


    if (j->state == JOB_STATE_ACKED) {
        tryJobGC(j);
        updateJobAwakeTime(j,0);
    }

    if (old_awakeme == j->awakeme)
        logJobsDebugInfo(LL_WARNING, "~~~WARNING~~~ NOT PROCESSABLE JOB", j);
}
