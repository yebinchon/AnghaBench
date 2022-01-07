
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int nodes_delivered; } ;
typedef TYPE_1__ job ;


 int CLUSTERMSG_NOFLAGS ;
 int CLUSTERMSG_TYPE_DELJOB ;
 int JOB_ID_LEN ;
 int LL_VERBOSE ;
 int clusterBroadcastJobIDMessage (int ,int ,int ,int ,int ) ;
 int serverLog (int ,char*,int ,int ) ;

void clusterBroadcastDelJob(job *j) {
    serverLog(LL_VERBOSE,"BCAST DELJOB: %.*s",JOB_ID_LEN,j->id);
    clusterBroadcastJobIDMessage(j->nodes_delivered,j->id,
                                 CLUSTERMSG_TYPE_DELJOB,0,CLUSTERMSG_NOFLAGS);
}
