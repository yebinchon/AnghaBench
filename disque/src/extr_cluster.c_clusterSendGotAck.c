
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clusterNode ;


 int CLUSTERMSG_TYPE_GOTACK ;
 int clusterSendJobIDMessage (int ,int *,char*,int) ;

void clusterSendGotAck(clusterNode *node, char *jobid, int known) {
    clusterSendJobIDMessage(CLUSTERMSG_TYPE_GOTACK,node,jobid,known);
}
