
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {char* ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_22__ {int flags; } ;
typedef TYPE_2__ queue ;
typedef int mstime_t ;
typedef int job ;
struct TYPE_23__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_3__ client ;
struct TYPE_24__ {int leavingerr; int nullmultibulk; int syntaxerr; } ;


 int C_OK ;
 int GETJOB_FLAG_NONE ;
 int GETJOB_FLAG_WITHCOUNTERS ;
 int NEEDJOBS_CLIENTS_WAITING ;
 int NEEDJOBS_REACHED_ZERO ;
 int QUEUE_FLAG_PAUSED_OUT ;
 int UNIT_MILLISECONDS ;
 void* addDeferredMultiBulkLength (TYPE_3__*) ;
 int addReply (TYPE_3__*,int ) ;
 int addReplyError (TYPE_3__*,char*) ;
 int addReplyJob (TYPE_3__*,int *,int ) ;
 int blockForJobs (TYPE_3__*,TYPE_1__**,int,int ,int ) ;
 int getLongLongFromObject (TYPE_1__*,long long*) ;
 int getTimeoutFromObjectOrReply (TYPE_3__*,TYPE_1__*,int *,int ) ;
 TYPE_2__* lookupQueue (TYPE_1__*) ;
 scalar_t__ myselfLeaving () ;
 int needJobsForQueue (TYPE_2__*,int ) ;
 int needJobsForQueueName (TYPE_1__*,int ) ;
 int * queueFetchJob (TYPE_2__*,unsigned long*) ;
 int setDeferredMultiBulkLength (TYPE_3__*,void*,long long) ;
 TYPE_4__ shared ;
 int strcasecmp (char*,char*) ;

void getjobCommand(client *c) {
    mstime_t timeout = 0;
    long long count = 1, emitted_jobs = 0;
    int nohang = 0;
    int withcounters = 0;
    robj **queues = ((void*)0);
    int j, numqueues = 0;


    for (j = 1; j < c->argc; j++) {
        char *opt = c->argv[j]->ptr;
        int lastarg = j == c->argc-1;
        if (!strcasecmp(opt,"nohang")) {
            nohang = 1;
        } else if (!strcasecmp(opt,"withcounters")) {
            withcounters = 1;
        } else if (!strcasecmp(opt,"timeout") && !lastarg) {
            if (getTimeoutFromObjectOrReply(c,c->argv[j+1],&timeout,
                UNIT_MILLISECONDS) != C_OK) return;
            j++;
        } else if (!strcasecmp(opt,"count") && !lastarg) {
            int retval = getLongLongFromObject(c->argv[j+1],&count);
            if (retval != C_OK || count <= 0) {
                addReplyError(c,"COUNT must be a number greater than zero");
                return;
            }
            j++;
        } else if (!strcasecmp(opt,"from")) {
            queues = c->argv+j+1;
            numqueues = c->argc - j - 1;
            break;
        } else {
            addReply(c,shared.syntaxerr);
            return;
        }
    }


    if (queues == ((void*)0) || numqueues == 0) {
        addReply(c,shared.syntaxerr);
        return;
    }



    void *mbulk = ((void*)0);

    while(1) {
        long old_emitted = emitted_jobs;
        for (j = 0; j < numqueues; j++) {
            unsigned long qlen;
            queue *q = lookupQueue(queues[j]);
            job *job = ((void*)0);
            if (q && !(q->flags & QUEUE_FLAG_PAUSED_OUT))
                job = queueFetchJob(q,&qlen);

            if (!job) {
                if (!q)
                    needJobsForQueueName(queues[j],NEEDJOBS_CLIENTS_WAITING);
                else
                    needJobsForQueue(q,NEEDJOBS_CLIENTS_WAITING);
                continue;
            } else if (job && qlen == 0) {
                needJobsForQueue(q,NEEDJOBS_REACHED_ZERO);
            }
            if (!mbulk) mbulk = addDeferredMultiBulkLength(c);
            addReplyJob(c,job,withcounters ? GETJOB_FLAG_WITHCOUNTERS :
                                             GETJOB_FLAG_NONE);
            count--;
            emitted_jobs++;
            if (count == 0) break;
        }


        if (count == 0 || old_emitted == emitted_jobs) break;
    }

    if (mbulk) {
        setDeferredMultiBulkLength(c,mbulk,emitted_jobs);
        return;
    }


    if (nohang) {
        addReply(c,shared.nullmultibulk);
        return;
    }




    if (myselfLeaving()) {
        addReply(c,shared.leavingerr);
        return;
    }


    blockForJobs(c,queues,numqueues,timeout,
            withcounters ? GETJOB_FLAG_WITHCOUNTERS : GETJOB_FLAG_NONE);
}
