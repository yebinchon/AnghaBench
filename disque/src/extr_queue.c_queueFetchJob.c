
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sl; int jobs_out; int atime; } ;
typedef TYPE_1__ queue ;
struct TYPE_8__ {int flags; int state; } ;
typedef TYPE_2__ job ;
struct TYPE_9__ {int unixtime; } ;


 int JOB_FLAG_DELIVERED ;
 int JOB_STATE_ACTIVE ;
 TYPE_4__ server ;
 unsigned long skiplistLength (int ) ;
 TYPE_2__* skiplistPopHead (int ) ;

job *queueFetchJob(queue *q, unsigned long *qlen) {
    if (skiplistLength(q->sl) == 0) return ((void*)0);
    job *j = skiplistPopHead(q->sl);
    j->state = JOB_STATE_ACTIVE;
    j->flags |= JOB_FLAG_DELIVERED;
    q->atime = server.unixtime;
    q->jobs_out++;
    if (qlen) *qlen = skiplistLength(q->sl);
    return j;
}
