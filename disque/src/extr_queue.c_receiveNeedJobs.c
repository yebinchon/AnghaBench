
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef int robj ;
struct TYPE_11__ {int flags; } ;
typedef TYPE_1__ queue ;
struct TYPE_12__ {scalar_t__ retry; } ;
typedef TYPE_2__ job ;
typedef int clusterNode ;


 int NEEDJOBS_MAX_REQUEST ;
 int QUEUE_FLAG_PAUSED_OUT ;
 int clusterSendYourJobs (int *,TYPE_2__**,int) ;
 int freeJob (TYPE_2__*) ;
 scalar_t__ getQueueImportRate (TYPE_1__*) ;
 TYPE_1__* lookupQueue (int *) ;
 TYPE_2__* queueFetchJob (TYPE_1__*,int *) ;
 unsigned long queueLength (TYPE_1__*) ;
 int serverAssert (int ) ;
 int unregisterJob (TYPE_2__*) ;

void receiveNeedJobs(clusterNode *node, robj *qname, uint32_t count) {
    queue *q = lookupQueue(qname);
    unsigned long qlen = queueLength(q);
    uint32_t replyjobs = count;
    uint32_t j;




    if (qlen == 0 || getQueueImportRate(q) > 0) return;


    if (q->flags & QUEUE_FLAG_PAUSED_OUT) return;





    if (qlen < count*2) replyjobs = qlen/2;
    if (replyjobs == 0) replyjobs = 1;

    job *jobs[NEEDJOBS_MAX_REQUEST];
    for (j = 0; j < replyjobs; j++) {
        jobs[j] = queueFetchJob(q,((void*)0));
        serverAssert(jobs[j] != ((void*)0));
    }
    clusterSendYourJobs(node,jobs,replyjobs);




    for (j = 0; j < replyjobs; j++) {
        job *job = jobs[j];
        if (job->retry == 0) {
            unregisterJob(job);
            freeJob(job);
        }
    }
}
