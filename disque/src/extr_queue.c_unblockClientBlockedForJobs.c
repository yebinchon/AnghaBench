
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_9__ {int * clients; } ;
typedef TYPE_2__ queue ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_8__ {int queues; } ;
struct TYPE_10__ {TYPE_1__ bpop; } ;
typedef TYPE_3__ client ;


 int GCQueue (TYPE_2__*,int ) ;
 int QUEUE_MAX_IDLE_TIME ;
 int dictEmpty (int ,int *) ;
 int * dictGetIterator (int ) ;
 int * dictGetKey (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int listDelNode (int *,int ) ;
 scalar_t__ listLength (int *) ;
 int listRelease (int *) ;
 int listSearchKey (int *,TYPE_3__*) ;
 TYPE_2__* lookupQueue (int *) ;
 int serverAssert (int ) ;

void unblockClientBlockedForJobs(client *c) {
    dictEntry *de;
    dictIterator *di;

    di = dictGetIterator(c->bpop.queues);
    while((de = dictNext(di)) != ((void*)0)) {
        robj *qname = dictGetKey(de);
        queue *q = lookupQueue(qname);
        serverAssert(q != ((void*)0));

        listDelNode(q->clients,listSearchKey(q->clients,c));
        if (listLength(q->clients) == 0) {
            listRelease(q->clients);
            q->clients = ((void*)0);
            GCQueue(q,QUEUE_MAX_IDLE_TIME);
        }
    }
    dictReleaseIterator(di);
    dictEmpty(c->bpop.queues,((void*)0));
}
