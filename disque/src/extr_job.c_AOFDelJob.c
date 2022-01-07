
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int robj ;
struct TYPE_5__ {int id; } ;
typedef TYPE_1__ job ;
struct TYPE_7__ {scalar_t__ aof_state; } ;
struct TYPE_6__ {int * deljob; } ;


 scalar_t__ AOF_OFF ;
 int JOB_ID_LEN ;
 int * createStringObject (int ,int ) ;
 int decrRefCount (int *) ;
 int feedAppendOnlyFile (int **,int) ;
 TYPE_3__ server ;
 TYPE_2__ shared ;

void AOFDelJob(job *job) {
    if (server.aof_state == AOF_OFF) return;

    robj *jobid = createStringObject(job->id,JOB_ID_LEN);
    robj *argv[2] = {shared.deljob, jobid};
    feedAppendOnlyFile(argv,2);
    decrRefCount(jobid);
}
