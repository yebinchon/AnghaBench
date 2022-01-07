
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_16__ {scalar_t__ needjobs_adhoc_attempt; int * needjobs_responders; scalar_t__ needjobs_bcast_attempt; } ;
typedef TYPE_1__ queue ;
struct TYPE_17__ {scalar_t__ retry; int queue; int qtime; int flags; int state; int id; } ;
typedef TYPE_2__ job ;
typedef int dictEntry ;
struct TYPE_18__ {int name; } ;
typedef TYPE_3__ clusterNode ;
struct TYPE_19__ {int unixtime; int mstime; } ;


 scalar_t__ C_ERR ;
 scalar_t__ DICT_OK ;
 int JOB_FLAG_BCAST_QUEUED ;
 int JOB_STATE_ACTIVE ;
 int LL_WARNING ;
 int SER_MESSAGE ;
 int clusterNodesDictType ;
 TYPE_1__* createQueue (int ) ;
 TYPE_2__* deserializeJob (unsigned char*,scalar_t__,unsigned char**,int ) ;
 scalar_t__ dictAdd (int *,TYPE_3__*,int *) ;
 int * dictCreate (int *,int *) ;
 int * dictFind (int *,TYPE_3__*) ;
 int dictSetSignedIntegerVal (int *,int ) ;
 scalar_t__ enqueueJob (TYPE_2__*,int ) ;
 int freeJob (TYPE_2__*) ;
 TYPE_2__* lookupJob (int ) ;
 TYPE_1__* lookupQueue (int ) ;
 int registerJob (TYPE_2__*) ;
 TYPE_5__ server ;
 int serverLog (int ,char*,int,int ) ;
 int updateQueueImportRate (TYPE_1__*) ;

void receiveYourJobs(clusterNode *node, uint32_t numjobs, unsigned char *serializedjobs, uint32_t serializedlen) {
    dictEntry *de;
    queue *q;
    uint32_t j;
    unsigned char *nextjob = serializedjobs;

    for (j = 0; j < numjobs; j++) {
        uint32_t remlen = serializedlen - (nextjob-serializedjobs);
        job *job, *sj = deserializeJob(nextjob,remlen,&nextjob,SER_MESSAGE);

        if (sj == ((void*)0)) {
            serverLog(LL_WARNING,
                "The %d-th job received via YOURJOBS from %.40s is corrupted.",
                (int)j+1, node->name);
            return;
        }




        job = lookupJob(sj->id);
        if (job) {
            freeJob(sj);
        } else {
            job = sj;
            job->state = JOB_STATE_ACTIVE;
            registerJob(job);
        }


        job->flags &= ~JOB_FLAG_BCAST_QUEUED;





        if (job->retry == 0)
            job->qtime = server.mstime;

        if (enqueueJob(job,0) == C_ERR) continue;


        q = lookupQueue(job->queue);
        if (!q) q = createQueue(job->queue);
        if (q->needjobs_responders == ((void*)0))
            q->needjobs_responders = dictCreate(&clusterNodesDictType,((void*)0));

        if (dictAdd(q->needjobs_responders, node, ((void*)0)) == DICT_OK) {



            q->needjobs_bcast_attempt = 0;
        }

        de = dictFind(q->needjobs_responders, node);
        dictSetSignedIntegerVal(de,server.unixtime);
        updateQueueImportRate(q);
        q->needjobs_adhoc_attempt = 0;
    }
}
