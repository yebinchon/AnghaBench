
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_4__* job; } ;
struct TYPE_6__ {TYPE_1__ bpop; } ;
typedef TYPE_2__ client ;
struct TYPE_7__ {scalar_t__ state; } ;


 scalar_t__ JOB_STATE_ACTIVE ;
 scalar_t__ JOB_STATE_WAIT_REPL ;
 int deleteJobFromCluster (TYPE_4__*) ;

void unblockClientWaitingJobRepl(client *c) {



    if (c->bpop.job->state == JOB_STATE_WAIT_REPL) {



        c->bpop.job->state = JOB_STATE_ACTIVE;
        deleteJobFromCluster(c->bpop.job);
    }
    c->bpop.job = ((void*)0);
}
