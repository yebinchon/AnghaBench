
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ state; scalar_t__ etime; } ;
typedef TYPE_2__ job ;
struct TYPE_13__ {int flags; TYPE_1__** argv; } ;
typedef TYPE_3__ client ;
struct TYPE_14__ {scalar_t__ unixtime; scalar_t__ aof_enqueue_jobs_once; } ;
struct TYPE_11__ {int ptr; } ;


 int CLIENT_AOF_CLIENT ;
 scalar_t__ C_OK ;
 scalar_t__ JOB_STATE_ACTIVE ;
 scalar_t__ JOB_STATE_QUEUED ;
 int LL_WARNING ;
 int SER_STORAGE ;
 int addReplyError (TYPE_3__*,char*) ;
 TYPE_2__* deserializeJob (int ,int ,int *,int ) ;
 int enqueueJob (TYPE_2__*,int ) ;
 int exit (int) ;
 int freeJob (TYPE_2__*) ;
 scalar_t__ registerJob (TYPE_2__*) ;
 int sdslen (int ) ;
 TYPE_4__ server ;
 int serverLog (int ,char*) ;

void loadjobCommand(client *c) {
    if (!(c->flags & CLIENT_AOF_CLIENT)) {
        addReplyError(c,"LOADJOB is a special command only processed from AOF");
        return;
    }
    job *job = deserializeJob(c->argv[1]->ptr,sdslen(c->argv[1]->ptr),((void*)0),SER_STORAGE);


    if (job == ((void*)0)) {
        serverLog(LL_WARNING,
            "Unrecoverable error loading AOF: corrupted LOADJOB data.");
        exit(1);
    }

    int enqueue_job = 0;
    if (job->state == JOB_STATE_QUEUED) {
        if (server.aof_enqueue_jobs_once) enqueue_job = 1;
        job->state = JOB_STATE_ACTIVE;
    }


    if (job->etime <= server.unixtime) {
        freeJob(job);
        return;
    }




    if (registerJob(job) == C_OK && enqueue_job)
        enqueueJob(job,0);
}
