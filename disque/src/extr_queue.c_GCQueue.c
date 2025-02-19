
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_4__ {scalar_t__ atime; int flags; int name; int sl; scalar_t__ clients; } ;
typedef TYPE_1__ queue ;
struct TYPE_5__ {scalar_t__ unixtime; } ;


 int C_ERR ;
 int C_OK ;
 int QUEUE_FLAG_PAUSED_ALL ;
 int destroyQueue (int ) ;
 scalar_t__ listLength (scalar_t__) ;
 TYPE_2__ server ;
 scalar_t__ skiplistLength (int ) ;

int GCQueue(queue *q, time_t max_idle_time) {
    time_t idle = server.unixtime - q->atime;
    if (idle < max_idle_time) return C_ERR;
    if (q->clients && listLength(q->clients) != 0) return C_ERR;
    if (skiplistLength(q->sl)) return C_ERR;
    if (q->flags & QUEUE_FLAG_PAUSED_ALL) return C_ERR;
    destroyQueue(q->name);
    return C_OK;
}
