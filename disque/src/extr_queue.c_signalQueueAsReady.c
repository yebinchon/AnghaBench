
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int * clients; } ;
typedef TYPE_1__ queue ;
struct TYPE_5__ {int ready_queues; } ;


 scalar_t__ DICT_OK ;
 scalar_t__ dictAdd (int ,int ,int *) ;
 int incrRefCount (int ) ;
 scalar_t__ listLength (int *) ;
 TYPE_3__ server ;

void signalQueueAsReady(queue *q) {
    if (q->clients == ((void*)0) || listLength(q->clients) == 0) return;
    if (dictAdd(server.ready_queues,q->name,((void*)0)) == DICT_OK)
        incrRefCount(q->name);
}
