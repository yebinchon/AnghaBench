
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ state; int id; scalar_t__ nodes_delivered; scalar_t__ nodes_confirmed; } ;
typedef TYPE_2__ job ;
struct TYPE_13__ {int name; } ;
typedef TYPE_3__ clusterNode ;
struct TYPE_14__ {TYPE_1__* cluster; } ;
struct TYPE_11__ {scalar_t__ nodes; } ;


 scalar_t__ JOB_STATE_ACKED ;
 int LL_VERBOSE ;
 int clusterBroadcastDelJob (TYPE_2__*) ;
 int dictAdd (scalar_t__,int ,TYPE_3__*) ;
 int * dictFind (scalar_t__,int ) ;
 scalar_t__ dictSize (scalar_t__) ;
 int freeJob (TYPE_2__*) ;
 TYPE_5__ server ;
 int serverLog (int ,char*,int ,...) ;
 int unregisterJob (TYPE_2__*) ;

void gotAckReceived(clusterNode *sender, job *job, int known) {


    int dummy_ack = dictSize(job->nodes_delivered) == 0;

    serverLog(LL_VERBOSE,"RECEIVED GOTACK FROM %.40s FOR JOB %.48s",
        sender->name, job->id);



    if (job->state != JOB_STATE_ACKED) return;




    if (dummy_ack && known) {
        serverLog(LL_VERBOSE,"Deleting %.48s: authoritative node reached",
            job->id);
        unregisterJob(job);
        freeJob(job);
        return;
    }
    if (known || dictFind(job->nodes_delivered,sender->name) != ((void*)0)) {
        dictAdd(job->nodes_delivered,sender->name,sender);





        if (job->nodes_confirmed)
            dictAdd(job->nodes_confirmed,sender->name,sender);
    }





    if (!known && dummy_ack) {
        dictAdd(job->nodes_confirmed,sender->name,sender);
        if (dictSize(job->nodes_confirmed) >= dictSize(server.cluster->nodes))
        {
            serverLog(LL_VERBOSE,
                "Deleting %.48s: dummy ACK not known cluster-wide",
                job->id);
            unregisterJob(job);
            freeJob(job);
            return;
        }
    }



    if (!dummy_ack && job->nodes_confirmed &&
         dictSize(job->nodes_confirmed) >= dictSize(job->nodes_delivered))
    {
        serverLog(LL_VERBOSE,
            "Deleting %.48s: All nodes involved acknowledged the job",
            job->id);
        clusterBroadcastDelJob(job);
        unregisterJob(job);
        freeJob(job);
        return;
    }
}
