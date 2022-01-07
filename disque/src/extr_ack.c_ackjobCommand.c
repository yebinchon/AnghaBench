
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ state; } ;
typedef TYPE_2__ job ;
struct TYPE_18__ {int argc; TYPE_5__** argv; } ;
typedef TYPE_3__ client ;
struct TYPE_20__ {TYPE_1__* cluster; } ;
struct TYPE_19__ {char* ptr; } ;
struct TYPE_16__ {int size; } ;


 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 scalar_t__ JOB_STATE_ACKED ;
 int acknowledgeJob (TYPE_2__*) ;
 int addReplyLongLong (TYPE_3__*,int) ;
 TYPE_2__* createJob (char*,scalar_t__,int ,int ) ;
 int dequeueJob (TYPE_2__*) ;
 int getRawTTLFromJobID (char*) ;
 TYPE_2__* lookupJob (char*) ;
 int myselfLeaving () ;
 scalar_t__ registerJob (TYPE_2__*) ;
 TYPE_8__ server ;
 int serverAssert (int) ;
 int setJobTTLFromID (TYPE_2__*) ;
 int tryJobGC (TYPE_2__*) ;
 scalar_t__ validateJobIDs (TYPE_3__*,TYPE_5__**,int) ;

void ackjobCommand(client *c) {
    int j, known = 0;

    if (validateJobIDs(c,c->argv+1,c->argc-1) == C_ERR) return;


    for (j = 1; j < c->argc; j++) {
        job *job = lookupJob(c->argv[j]->ptr);




        if (job == ((void*)0) && server.cluster->size > 1 && !myselfLeaving()) {
            char *id = c->argv[j]->ptr;
            int ttl = getRawTTLFromJobID(id);



            if (ttl & 1) {
                job = createJob(id,JOB_STATE_ACKED,0,0);
                setJobTTLFromID(job);
                serverAssert(registerJob(job) == C_OK);
            }
        }

        else if (job && job->state != JOB_STATE_ACKED) {
            dequeueJob(job);
            acknowledgeJob(job);
            known++;
        }

        if (job) tryJobGC(job);
    }
    addReplyLongLong(c,known);
}
