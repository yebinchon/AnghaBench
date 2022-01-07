
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ delay; int * nodes_confirmed; int nodes_delivered; int state; int id; } ;
typedef TYPE_1__ job ;
typedef int dictEntry ;
typedef int clusterNode ;
typedef int client ;
struct TYPE_14__ {int name; } ;


 int AOFLoadJob (TYPE_1__*) ;
 int C_ERR ;
 int C_OK ;
 int JOB_ID_LEN ;
 int JOB_STATE_ACTIVE ;
 int LL_VERBOSE ;
 int addReplyJobID (int *,TYPE_1__*) ;
 int clusterSendEnqueue (int *,TYPE_1__*,scalar_t__) ;
 int * dictFind (int ,int ) ;
 int * dictGetRandomKey (int *) ;
 int * dictGetVal (int *) ;
 int dictRelease (int *) ;
 int enqueueJob (TYPE_1__*,int ) ;
 int freeJob (TYPE_1__*) ;
 int * jobGetAssociatedValue (TYPE_1__*) ;
 TYPE_5__* myself ;
 int serverLog (int ,char*,int ,int ) ;
 int setJobAssociatedValue (TYPE_1__*,int *) ;
 int unblockClient (int *) ;
 int unregisterJob (TYPE_1__*) ;
 int updateJobAwakeTime (TYPE_1__*,int ) ;

int jobReplicationAchieved(job *j) {
    serverLog(LL_VERBOSE,"Replication ACHIEVED %.*s",JOB_ID_LEN,j->id);



    j->state = JOB_STATE_ACTIVE;


    client *c = jobGetAssociatedValue(j);
    setJobAssociatedValue(j,((void*)0));
    addReplyJobID(c,j);
    unblockClient(c);



    if (dictFind(j->nodes_delivered,myself->name) == ((void*)0)) {
        dictEntry *de = dictGetRandomKey(j->nodes_confirmed);
        if (de) {
            clusterNode *n = dictGetVal(de);
            clusterSendEnqueue(n,j,j->delay);
        }
        unregisterJob(j);
        freeJob(j);
        return C_ERR;
    }




    if (j->nodes_confirmed) {
        dictRelease(j->nodes_confirmed);
        j->nodes_confirmed = ((void*)0);
    }


    if (j->delay == 0)
        enqueueJob(j,0);
    else
        updateJobAwakeTime(j,0);

    AOFLoadJob(j);
    return C_OK;
}
