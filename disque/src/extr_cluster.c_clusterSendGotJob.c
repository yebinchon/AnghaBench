
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ job ;
typedef int clusterNode ;


 int CLUSTERMSG_TYPE_GOTJOB ;
 int clusterSendJobIDMessage (int ,int *,int ,int ) ;

void clusterSendGotJob(clusterNode *node, job *j) {
    clusterSendJobIDMessage(CLUSTERMSG_TYPE_GOTJOB,node,j->id,0);
}
