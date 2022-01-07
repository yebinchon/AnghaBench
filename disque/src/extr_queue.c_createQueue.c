
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int robj ;
struct TYPE_6__ {int * name; scalar_t__ jobs_out; scalar_t__ jobs_in; scalar_t__ prev_import_jobs_count; int prev_import_jobs_time; scalar_t__ current_import_jobs_count; int current_import_jobs_time; int * clients; int * needjobs_responders; scalar_t__ needjobs_adhoc_attempt; scalar_t__ needjobs_adhoc_time; scalar_t__ needjobs_bcast_attempt; scalar_t__ needjobs_bcast_time; int atime; int ctime; int sl; scalar_t__ flags; } ;
typedef TYPE_1__ queue ;
struct TYPE_7__ {int queues; int mstime; int unixtime; } ;


 int dictAdd (int ,int *,TYPE_1__*) ;
 int * dictFind (int ,int *) ;
 int incrRefCount (int *) ;
 TYPE_3__ server ;
 int skiplistCompareJobsInQueue ;
 int skiplistCreate (int ) ;
 TYPE_1__* zmalloc (int) ;

queue *createQueue(robj *name) {
    if (dictFind(server.queues,name) != ((void*)0)) return ((void*)0);

    queue *q = zmalloc(sizeof(queue));
    q->name = name;
    q->flags = 0;
    incrRefCount(name);
    q->sl = skiplistCreate(skiplistCompareJobsInQueue);
    q->ctime = server.unixtime;
    q->atime = server.unixtime;
    q->needjobs_bcast_time = 0;
    q->needjobs_bcast_attempt = 0;
    q->needjobs_adhoc_time = 0;
    q->needjobs_adhoc_attempt = 0;
    q->needjobs_responders = ((void*)0);
    q->clients = ((void*)0);

    q->current_import_jobs_time = server.mstime;
    q->current_import_jobs_count = 0;
    q->prev_import_jobs_time = server.mstime;
    q->prev_import_jobs_count = 0;
    q->jobs_in = 0;
    q->jobs_out = 0;

    incrRefCount(name);
    dictAdd(server.queues,q->name,q);
    return q;
}
