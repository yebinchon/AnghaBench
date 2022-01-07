
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ queue ;


 int QUEUE_FLAG_PAUSED_OUT ;
 int signalQueueAsReady (TYPE_1__*) ;

void queueChangePausedState(queue *q, int flag, int set) {
    uint32_t orig_flags = q->flags;

    if (set) q->flags |= flag;
    else q->flags &= ~flag;

    if ((orig_flags & QUEUE_FLAG_PAUSED_OUT) &&
        !(q->flags & QUEUE_FLAG_PAUSED_OUT))
    {
        signalQueueAsReady(q);
    }
}
