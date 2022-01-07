
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int robj ;
typedef int queue ;


 int QUEUE_FLAG_PAUSED_IN ;
 int QUEUE_FLAG_PAUSED_OUT ;
 int * createQueue (int *) ;
 int * lookupQueue (int *) ;
 int queueChangePausedState (int *,int,int) ;

void receivePauseQueue(robj *qname, uint32_t flags) {
    queue *q = lookupQueue(qname);



    if (!q) {
        if (flags == 0) return;
        q = createQueue(qname);
    }


    queueChangePausedState(q,QUEUE_FLAG_PAUSED_IN,
        (flags & QUEUE_FLAG_PAUSED_IN) != 0);
    queueChangePausedState(q,QUEUE_FLAG_PAUSED_OUT,
        (flags & QUEUE_FLAG_PAUSED_OUT) != 0);
}
