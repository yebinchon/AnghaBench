
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; int * nodes_confirmed; } ;
typedef TYPE_1__ job ;


 int AOFAckJob (TYPE_1__*) ;
 scalar_t__ JOB_STATE_ACKED ;
 int dequeueJob (TYPE_1__*) ;
 int dictRelease (int *) ;
 int updateJobAwakeTime (TYPE_1__*,int ) ;

void acknowledgeJob(job *job) {
    if (job->state == JOB_STATE_ACKED) return;

    dequeueJob(job);
    job->state = JOB_STATE_ACKED;



    if (job->nodes_confirmed) {
        dictRelease(job->nodes_confirmed);
        job->nodes_confirmed = ((void*)0);
    }
    updateJobAwakeTime(job,0);
    AOFAckJob(job);
}
