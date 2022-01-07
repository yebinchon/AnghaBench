
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int robj ;
struct TYPE_5__ {scalar_t__ clients; scalar_t__ needjobs_responders; int sl; int name; } ;
typedef TYPE_1__ queue ;
struct TYPE_6__ {int queues; } ;


 int C_ERR ;
 int C_OK ;
 int decrRefCount (int ) ;
 int dictDelete (int ,int *) ;
 int dictRelease (scalar_t__) ;
 scalar_t__ listLength (scalar_t__) ;
 int listRelease (scalar_t__) ;
 TYPE_1__* lookupQueue (int *) ;
 TYPE_3__ server ;
 int serverAssert (int) ;
 int skiplistFree (int ) ;
 int zfree (TYPE_1__*) ;

int destroyQueue(robj *name) {
    queue *q = lookupQueue(name);
    if (!q) return C_ERR;

    dictDelete(server.queues,name);
    decrRefCount(q->name);
    skiplistFree(q->sl);
    if (q->needjobs_responders) dictRelease(q->needjobs_responders);
    if (q->clients) {
        serverAssert(listLength(q->clients) == 0);
        listRelease(q->clients);
    }
    zfree(q);
    return C_OK;
}
