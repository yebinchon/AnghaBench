
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int clients; } ;
typedef TYPE_2__ queue ;
struct TYPE_15__ {TYPE_4__* value; } ;
typedef TYPE_3__ listNode ;
typedef int job ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_13__ {int flags; } ;
struct TYPE_16__ {TYPE_1__ bpop; } ;
typedef TYPE_4__ client ;
struct TYPE_17__ {int ready_queues; } ;


 int NEEDJOBS_REACHED_ZERO ;
 int addReplyJob (TYPE_4__*,int *,int ) ;
 int addReplyMultiBulkLen (TYPE_4__*,int) ;
 int dictEmpty (int ,int *) ;
 int * dictGetIterator (int ) ;
 int dictGetKey (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ dictSize (int ) ;
 TYPE_3__* listFirst (int ) ;
 int listLength (int ) ;
 TYPE_2__* lookupQueue (int ) ;
 int needJobsForQueue (TYPE_2__*,int ) ;
 int * queueFetchJob (TYPE_2__*,unsigned long*) ;
 TYPE_6__ server ;
 int unblockClient (TYPE_4__*) ;

void handleClientsBlockedOnQueues(void) {
    dictEntry *de;
    dictIterator *di;


    if (dictSize(server.ready_queues) == 0) return;

    di = dictGetIterator(server.ready_queues);
    while((de = dictNext(di)) != ((void*)0)) {
        queue *q = lookupQueue(dictGetKey(de));
        if (!q || !q->clients) continue;
        int numclients = listLength(q->clients);
        while(numclients--) {
            unsigned long qlen;
            listNode *ln = listFirst(q->clients);
            client *c = ln->value;
            job *j = queueFetchJob(q,&qlen);

            if (!j) break;
            if (qlen == 0) needJobsForQueue(q,NEEDJOBS_REACHED_ZERO);
            addReplyMultiBulkLen(c,1);
            addReplyJob(c,j,c->bpop.flags);
            unblockClient(c);
        }
    }
    dictReleaseIterator(di);
    dictEmpty(server.ready_queues,((void*)0));
}
