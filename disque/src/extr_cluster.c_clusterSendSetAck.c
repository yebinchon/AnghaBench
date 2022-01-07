
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int id; int nodes_delivered; } ;
typedef TYPE_1__ job ;
typedef int clusterNode ;


 int CLUSTERMSG_TYPE_SETACK ;
 int clusterSendJobIDMessage (int ,int *,int ,int ) ;
 int dictSize (int ) ;

void clusterSendSetAck(clusterNode *node, job *j) {
    uint32_t maxowners = dictSize(j->nodes_delivered);
    clusterSendJobIDMessage(CLUSTERMSG_TYPE_SETACK,node,j->id,maxowners);
}
