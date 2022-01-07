
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ state; int id; scalar_t__ awakeme; } ;
typedef TYPE_1__ job ;
typedef int client ;
struct TYPE_12__ {int jobs; int awakeme; } ;


 int AOFDelJob (TYPE_1__*) ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ JOB_STATE_ACKED ;
 scalar_t__ JOB_STATE_ACTIVE ;
 scalar_t__ JOB_STATE_QUEUED ;
 scalar_t__ JOB_STATE_WAIT_REPL ;
 int addReplySds (int *,int ) ;
 int clusterBroadcastDelJob (TYPE_1__*) ;
 int dequeueJob (TYPE_1__*) ;
 int dictDelete (int ,int ) ;
 int * jobGetAssociatedValue (TYPE_1__*) ;
 TYPE_1__* lookupJob (int ) ;
 int sdsnew (char*) ;
 TYPE_5__ server ;
 int serverAssert (int ) ;
 int setJobAssociatedValue (TYPE_1__*,int *) ;
 int skiplistDelete (int ,TYPE_1__*) ;
 int unblockClient (int *) ;

int unregisterJob(job *j) {
    j = lookupJob(j->id);
    if (!j) return C_ERR;



    if (j->state >= JOB_STATE_ACTIVE && j->state != JOB_STATE_ACKED)
        AOFDelJob(j);


    if (j->awakeme) serverAssert(skiplistDelete(server.awakeme,j));


    if (j->state == JOB_STATE_QUEUED) dequeueJob(j);




    if (j->state == JOB_STATE_WAIT_REPL) {
        client *c = jobGetAssociatedValue(j);
        setJobAssociatedValue(j,((void*)0));
        addReplySds(c,
            sdsnew("-NOREPL job removed (expired?) before the requested "
                   "replication level was achieved\r\n"));


        j->state = JOB_STATE_ACTIVE;
        clusterBroadcastDelJob(j);
        unblockClient(c);
    }


    dictDelete(server.jobs, j->id);
    return C_OK;
}
