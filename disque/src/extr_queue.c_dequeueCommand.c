
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ state; } ;
typedef TYPE_1__ job ;
struct TYPE_10__ {int argc; TYPE_4__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_11__ {int ptr; } ;


 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 scalar_t__ JOB_STATE_QUEUED ;
 int addReplyLongLong (TYPE_2__*,int) ;
 scalar_t__ dequeueJob (TYPE_1__*) ;
 TYPE_1__* lookupJob (int ) ;
 scalar_t__ validateJobIDs (TYPE_2__*,TYPE_4__**,int) ;

void dequeueCommand(client *c) {
    int j, dequeued = 0;

    if (validateJobIDs(c,c->argv+1,c->argc-1) == C_ERR) return;


    for (j = 1; j < c->argc; j++) {
        job *job = lookupJob(c->argv[j]->ptr);
        if (job == ((void*)0)) continue;

        if (job->state == JOB_STATE_QUEUED && dequeueJob(job) == C_OK)
            dequeued++;
    }
    addReplyLongLong(c,dequeued);
}
