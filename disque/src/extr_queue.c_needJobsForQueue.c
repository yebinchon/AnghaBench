
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned long uint32_t ;
struct TYPE_8__ {int needjobs_bcast_attempt; void* needjobs_bcast_time; int needjobs_adhoc_attempt; void* needjobs_adhoc_time; int needjobs_responders; int name; } ;
typedef TYPE_2__ queue ;
typedef void* mstime_t ;
struct TYPE_9__ {TYPE_1__* cluster; } ;
struct TYPE_7__ {int nodes; } ;


 void* NEEDJOBS_BCAST_ADHOC_MAX_DELAY ;
 int NEEDJOBS_BCAST_ADHOC_MIN_DELAY ;
 void* NEEDJOBS_BCAST_ALL_MAX_DELAY ;
 int NEEDJOBS_BCAST_ALL_MIN_DELAY ;
 unsigned long NEEDJOBS_MAX_REQUEST ;
 unsigned long NEEDJOBS_MIN_REQUEST ;
 int NEEDJOBS_REACHED_ZERO ;
 int clusterSendNeedJobs (int ,unsigned long,int ) ;
 unsigned long getQueueImportRate (TYPE_2__*) ;
 unsigned long getQueueValidResponders (TYPE_2__*) ;
 void* mstime () ;
 scalar_t__ myselfLeaving () ;
 TYPE_3__ server ;

void needJobsForQueue(queue *q, int type) {
    uint32_t import_per_sec;
    uint32_t to_fetch;
    unsigned long num_responders = 0;
    mstime_t bcast_delay, adhoc_delay;
    mstime_t now = mstime();


    if (myselfLeaving()) return;

    import_per_sec = getQueueImportRate(q);





    if (type == NEEDJOBS_REACHED_ZERO && import_per_sec == 0) return;




    num_responders = getQueueValidResponders(q);
    to_fetch = NEEDJOBS_MIN_REQUEST;
    if (num_responders > 0)
        to_fetch = import_per_sec / num_responders;


    if (to_fetch < NEEDJOBS_MIN_REQUEST) to_fetch = NEEDJOBS_MIN_REQUEST;
    else if (to_fetch > NEEDJOBS_MAX_REQUEST) to_fetch = NEEDJOBS_MAX_REQUEST;



    bcast_delay = NEEDJOBS_BCAST_ALL_MIN_DELAY *
                  (1 << q->needjobs_bcast_attempt);
    if (bcast_delay > NEEDJOBS_BCAST_ALL_MAX_DELAY)
        bcast_delay = NEEDJOBS_BCAST_ALL_MAX_DELAY;

    if (now - q->needjobs_bcast_time > bcast_delay) {
        q->needjobs_bcast_time = now;
        q->needjobs_bcast_attempt++;


        clusterSendNeedJobs(q->name,1,server.cluster->nodes);
    }
    adhoc_delay = NEEDJOBS_BCAST_ADHOC_MIN_DELAY *
                  (1 << q->needjobs_adhoc_attempt);
    if (adhoc_delay > NEEDJOBS_BCAST_ADHOC_MAX_DELAY)
        adhoc_delay = NEEDJOBS_BCAST_ADHOC_MAX_DELAY;

    if ((type == NEEDJOBS_REACHED_ZERO ||
         now - q->needjobs_adhoc_time > adhoc_delay) &&
         num_responders > 0)
    {
        q->needjobs_adhoc_time = now;
        q->needjobs_adhoc_attempt++;
        clusterSendNeedJobs(q->name,to_fetch,q->needjobs_responders);
    }
}
