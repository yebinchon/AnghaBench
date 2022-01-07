
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {TYPE_4__* level; struct TYPE_20__* backward; int * obj; } ;
typedef TYPE_5__ skiplistNode ;
struct TYPE_21__ {TYPE_3__* sl; } ;
typedef TYPE_6__ queue ;
typedef int job ;
struct TYPE_22__ {int * argv; } ;
typedef TYPE_7__ client ;
struct TYPE_23__ {int emptymultibulk; } ;
struct TYPE_19__ {TYPE_5__* forward; } ;
struct TYPE_18__ {TYPE_2__* header; TYPE_5__* tail; } ;
struct TYPE_17__ {TYPE_1__* level; } ;
struct TYPE_16__ {TYPE_5__* forward; } ;


 scalar_t__ C_OK ;
 int GETJOB_FLAG_NONE ;
 void* addDeferredMultiBulkLength (TYPE_7__*) ;
 int addReply (TYPE_7__*,int ) ;
 int addReplyJob (TYPE_7__*,int *,int ) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_7__*,int ,long long*,int *) ;
 TYPE_6__* lookupQueue (int ) ;
 int setDeferredMultiBulkLength (TYPE_7__*,void*,long long) ;
 TYPE_8__ shared ;

void qpeekCommand(client *c) {
    int newjobs = 0;
    long long count, returned = 0;

    if (getLongLongFromObjectOrReply(c,c->argv[2],&count,((void*)0)) != C_OK)
        return;

    if (count < 0) {
        count = -count;
        newjobs = 1;
    }

    skiplistNode *sn = ((void*)0);
    queue *q = lookupQueue(c->argv[1]);

    if (q != ((void*)0))
        sn = newjobs ? q->sl->tail : q->sl->header->level[0].forward;

    if (sn == ((void*)0)) {
        addReply(c,shared.emptymultibulk);
        return;
    }

    void *deflen = addDeferredMultiBulkLength(c);
    while(count-- && sn) {
        job *j = sn->obj;
        addReplyJob(c, j, GETJOB_FLAG_NONE);
        returned++;
        if (newjobs)
            sn = sn->backward;
        else
            sn = sn->level[0].forward;
    }
    setDeferredMultiBulkLength(c,deflen,returned);
}
