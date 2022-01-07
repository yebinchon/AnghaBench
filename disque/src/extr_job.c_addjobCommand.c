
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_15__ ;
typedef struct TYPE_35__ TYPE_13__ ;
typedef struct TYPE_34__ TYPE_10__ ;


typedef int uint64_t ;
struct TYPE_39__ {int flags; } ;
typedef TYPE_3__ queue ;
typedef int mstime_t ;
struct TYPE_40__ {long long repl; int ctime; long long delay; long long retry; int nodes_delivered; int state; int nodes_confirmed; scalar_t__ qtime; int body; scalar_t__ etime; TYPE_15__* queue; } ;
typedef TYPE_4__ job ;
typedef int dictEntry ;
typedef int clusterNode ;
struct TYPE_37__ {int added_node_time; TYPE_4__* job; int timeout; } ;
struct TYPE_41__ {int argc; TYPE_1__ bpop; TYPE_15__** argv; } ;
typedef TYPE_5__ client ;
struct TYPE_42__ {int syntaxerr; } ;
struct TYPE_38__ {int size; int reachable_nodes_count; } ;
struct TYPE_36__ {char* ptr; } ;
struct TYPE_35__ {int name; } ;
struct TYPE_34__ {scalar_t__ mstime; scalar_t__ unixtime; TYPE_2__* cluster; } ;


 int AOFLoadJob (TYPE_4__*) ;
 int BLOCKED_JOB_REPL ;
 scalar_t__ C_ERR ;
 int C_OK ;
 long long JOB_DEFAULT_RETRY_MAX ;
 int JOB_STATE_ACTIVE ;
 int JOB_STATE_WAIT_REPL ;
 int LL_WARNING ;
 int QUEUE_FLAG_PAUSED_IN ;
 int UNIT_MILLISECONDS ;
 int addReply (TYPE_5__*,int ) ;
 int addReplyError (TYPE_5__*,char*) ;
 int addReplyJobID (TYPE_5__*,TYPE_4__*) ;
 int addReplySds (TYPE_5__*,int ) ;
 int blockClient (TYPE_5__*,int ) ;
 int clusterNodesDictType ;
 int clusterReplicateJob (TYPE_4__*,int,int) ;
 int clusterSendEnqueue (int *,TYPE_4__*,long long) ;
 TYPE_4__* createJob (int *,int ,long long,long long) ;
 int dictAdd (int ,int ,TYPE_13__*) ;
 int dictCreate (int *,int *) ;
 int * dictGetRandomKey (int ) ;
 int * dictGetVal (int *) ;
 int enqueueJob (TYPE_4__*,int ) ;
 int freeJob (TYPE_4__*) ;
 int getLongLongFromObject (TYPE_15__*,long long*) ;
 scalar_t__ getMemoryWarningLevel () ;
 int getTimeoutFromObjectOrReply (TYPE_5__*,TYPE_15__*,int *,int ) ;
 int incrRefCount (TYPE_15__*) ;
 TYPE_3__* lookupQueue (TYPE_15__*) ;
 int mstime () ;
 TYPE_13__* myself ;
 int myselfLeaving () ;
 unsigned long queueLength (TYPE_3__*) ;
 scalar_t__ registerJob (TYPE_4__*) ;
 int sdscatprintf (int ,char*,char*) ;
 int sdsdup (char*) ;
 int sdsempty () ;
 int sdsnew (char*) ;
 TYPE_10__ server ;
 int serverLog (int ,char*) ;
 int setJobAssociatedValue (TYPE_4__*,TYPE_5__*) ;
 TYPE_7__ shared ;
 int strcasecmp (char*,char*) ;
 int updateJobAwakeTime (TYPE_4__*,int ) ;

void addjobCommand(client *c) {
    long long replicate = server.cluster->size > 3 ? 3 : server.cluster->size;
    long long ttl = 3600*24;
    long long retry = -1;
    long long delay = 0;
    long long maxlen = 0;
    mstime_t timeout;
    int j, retval;
    int async = 0;
    int extrepl = getMemoryWarningLevel() > 0;
    int leaving = myselfLeaving();
    static uint64_t prev_ctime = 0;




    if (leaving) extrepl = 1;


    for (j = 4; j < c->argc; j++) {
        char *opt = c->argv[j]->ptr;
        int lastarg = j == c->argc-1;
        if (!strcasecmp(opt,"replicate") && !lastarg) {
            retval = getLongLongFromObject(c->argv[j+1],&replicate);
            if (retval != C_OK || replicate <= 0 || replicate > 65535) {
                addReplyError(c,"REPLICATE must be between 1 and 65535");
                return;
            }
            j++;
        } else if (!strcasecmp(opt,"ttl") && !lastarg) {
            retval = getLongLongFromObject(c->argv[j+1],&ttl);
            if (retval != C_OK || ttl <= 0) {
                addReplyError(c,"TTL must be a number > 0");
                return;
            }
            j++;
        } else if (!strcasecmp(opt,"retry") && !lastarg) {
            retval = getLongLongFromObject(c->argv[j+1],&retry);
            if (retval != C_OK || retry < 0) {
                addReplyError(c,"RETRY time must be a non negative number");
                return;
            }
            j++;
        } else if (!strcasecmp(opt,"delay") && !lastarg) {
            retval = getLongLongFromObject(c->argv[j+1],&delay);
            if (retval != C_OK || delay < 0) {
                addReplyError(c,"DELAY time must be a non negative number");
                return;
            }
            j++;
        } else if (!strcasecmp(opt,"maxlen") && !lastarg) {
            retval = getLongLongFromObject(c->argv[j+1],&maxlen);
            if (retval != C_OK || maxlen <= 0) {
                addReplyError(c,"MAXLEN must be a positive number");
                return;
            }
            j++;
        } else if (!strcasecmp(opt,"async")) {
            async = 1;
        } else {
            addReply(c,shared.syntaxerr);
            return;
        }
    }


    if (getTimeoutFromObjectOrReply(c,c->argv[3],&timeout,UNIT_MILLISECONDS)
        != C_OK) return;




    if (replicate > 1 && retry == 0) {
        addReplyError(c,"With RETRY set to 0 please explicitly set  "
                        "REPLICATE to 1 (at-most-once delivery)");
        return;
    }


    if (delay >= ttl) {
        addReplyError(c,"The specified DELAY is greater than TTL. Job refused "
                        "since would never be delivered");
        return;
    }



    if (retry == -1) {
        retry = ttl/10;
        if (retry > JOB_DEFAULT_RETRY_MAX) retry = JOB_DEFAULT_RETRY_MAX;
        if (retry == 0) retry = 1;
    }


    int additional_nodes = extrepl ? replicate : replicate-1;

    if (additional_nodes > server.cluster->reachable_nodes_count) {
        if (extrepl &&
            additional_nodes-1 == server.cluster->reachable_nodes_count)
        {
            addReplySds(c,
                sdscatprintf(sdsempty(),
                       "-NOREPL Not enough reachable nodes "
                       "for the requested replication level, since I'm unable "
                       "to hold a copy of the message for the following "
                       "reason: %s\r\n",
                       leaving ? "I'm leaving the cluster" :
                                 "I'm out of memory"));
        } else {
            addReplySds(c,
                sdsnew("-NOREPL Not enough reachable nodes "
                       "for the requested replication level\r\n"));
        }
        return;
    }



    queue *q = lookupQueue(c->argv[1]);



    if (maxlen && q && queueLength(q) >= (unsigned long) maxlen) {
        addReplySds(c,
            sdsnew("-MAXLEN Queue is already longer than "
                   "the specified MAXLEN count\r\n"));
        return;
    }


    if (q && q->flags & QUEUE_FLAG_PAUSED_IN) {
        addReplySds(c,
            sdsnew("-PAUSED Queue paused in input, try later\r\n"));
        return;
    }





    int discard_local_copy = async && extrepl;


    job *job = createJob(((void*)0),JOB_STATE_WAIT_REPL,ttl,retry);
    job->queue = c->argv[1];
    incrRefCount(c->argv[1]);
    job->repl = replicate;



    if (!extrepl)
        dictAdd(job->nodes_delivered,myself->name,myself);






    job->ctime = mstime()*1000000;
    if (job->ctime <= prev_ctime) job->ctime = prev_ctime+1;
    prev_ctime = job->ctime;

    job->etime = server.unixtime + ttl;
    job->delay = delay;
    job->retry = retry;
    job->body = sdsdup(c->argv[2]->ptr);




    if (delay) {
        job->qtime = server.mstime + delay*1000;
    } else {

        job->qtime = server.mstime + retry*1000;
    }


    if (!discard_local_copy && registerJob(job) == C_ERR) {


        serverLog(LL_WARNING,"ID already existing in ADDJOB command!");
        freeJob(job);
        addReplyError(c,"Internal error creating the job, check server logs");
        return;
    }
    if ((replicate > 1 || extrepl) && !async) {
        c->bpop.timeout = timeout;
        c->bpop.job = job;
        c->bpop.added_node_time = mstime();
        blockClient(c,BLOCKED_JOB_REPL);
        setJobAssociatedValue(job,c);



        job->nodes_confirmed = dictCreate(&clusterNodesDictType,((void*)0));


        if (!extrepl) dictAdd(job->nodes_confirmed,myself->name,myself);
    } else {
        if (job->delay == 0) {
            if (!extrepl) enqueueJob(job,0);
        } else {



            job->state = JOB_STATE_ACTIVE;
            if (!discard_local_copy) updateJobAwakeTime(job,0);
        }
        addReplyJobID(c,job);
        if (!extrepl) AOFLoadJob(job);
    }



    if (additional_nodes > 0)
        clusterReplicateJob(job, additional_nodes, async);




    if (discard_local_copy) {
        dictEntry *de = dictGetRandomKey(job->nodes_delivered);
        if (de) {
            clusterNode *n = dictGetVal(de);
            clusterSendEnqueue(n,job,job->delay);
        }


        freeJob(job);
    }
}
