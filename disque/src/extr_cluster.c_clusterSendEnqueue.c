
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ job ;
typedef int clusterNode ;


 int CLUSTERMSG_TYPE_ENQUEUE ;
 int clusterSendJobIDMessage (int ,int *,int ,int ) ;

void clusterSendEnqueue(clusterNode *node, job *j, uint32_t delay) {
    clusterSendJobIDMessage(CLUSTERMSG_TYPE_ENQUEUE,node,j->id,delay);
}
