
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
typedef int robj ;
struct TYPE_10__ {int * clients; } ;
typedef TYPE_2__ queue ;
typedef int mstime_t ;
struct TYPE_9__ {int queues; int flags; int timeout; } ;
struct TYPE_11__ {TYPE_1__ bpop; } ;
typedef TYPE_3__ client ;


 int BLOCKED_GETJOB ;
 scalar_t__ DICT_OK ;
 int blockClient (TYPE_3__*,int ) ;
 TYPE_2__* createQueue (int *) ;
 scalar_t__ dictAdd (int ,int *,int *) ;
 int incrRefCount (int *) ;
 int listAddNodeTail (int *,TYPE_3__*) ;
 int * listCreate () ;
 TYPE_2__* lookupQueue (int *) ;

void blockForJobs(client *c, robj **queues, int numqueues, mstime_t timeout, uint64_t flags) {
    int j;

    c->bpop.timeout = timeout;
    c->bpop.flags = flags;
    for (j = 0; j < numqueues; j++) {
        queue *q = lookupQueue(queues[j]);
        if (!q) q = createQueue(queues[j]);


        if (dictAdd(c->bpop.queues,queues[j],((void*)0)) != DICT_OK) continue;
        incrRefCount(queues[j]);


        if (q->clients == ((void*)0)) q->clients = listCreate();
        listAddNodeTail(q->clients,c);
    }
    blockClient(c,BLOCKED_GETJOB);
}
