
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int mstime_t ;
struct TYPE_13__ {int ctime; scalar_t__ state; int retry; int flags; scalar_t__ etime; } ;
typedef TYPE_1__ job ;
struct TYPE_14__ {TYPE_5__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_16__ {int mstime; } ;
struct TYPE_15__ {int ptr; } ;


 scalar_t__ C_ERR ;
 int DISQUE_TIME_ERR ;
 int JOB_FLAG_BCAST_WILLQUEUE ;
 scalar_t__ JOB_STATE_QUEUED ;
 int addReplyLongLong (TYPE_2__*,int) ;
 int addReplySds (TYPE_2__*,int ) ;
 int clusterBroadcastWorking (TYPE_1__*) ;
 int dequeueJob (TYPE_1__*) ;
 TYPE_1__* lookupJob (int ) ;
 int randomTimeError (int ) ;
 int sdsnew (char*) ;
 TYPE_7__ server ;
 int updateJobRequeueTime (TYPE_1__*,int) ;
 scalar_t__ validateJobIDs (TYPE_2__*,TYPE_5__**,int) ;

void workingCommand(client *c) {
    if (validateJobIDs(c,c->argv+1,1) == C_ERR) return;

    job *job = lookupJob(c->argv[1]->ptr);
    if (job == ((void*)0)) {
        addReplySds(c,
            sdsnew("-NOJOB Job not known in the context of this node.\r\n"));
        return;
    }




    mstime_t ttl = ((mstime_t)job->etime*1000) - (job->ctime/1000000);
    mstime_t elapsed = server.mstime - (job->ctime/1000000);
    if (ttl > 0 && elapsed > ttl/2) {
        addReplySds(c,
            sdsnew("-TOOLATE Half of job TTL already elapsed, "
                   "you are no longer allowed to postpone the "
                   "next delivery.\r\n"));
        return;
    }

    if (job->state == JOB_STATE_QUEUED) dequeueJob(job);
    job->flags |= JOB_FLAG_BCAST_WILLQUEUE;
    updateJobRequeueTime(job,server.mstime+
                         job->retry*1000+
                         randomTimeError(DISQUE_TIME_ERR));
    clusterBroadcastWorking(job);
    addReplyLongLong(c,job->retry);
}
