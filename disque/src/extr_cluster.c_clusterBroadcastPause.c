
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int robj ;
struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {int nodes; } ;


 int clusterSendPause (int *,int ,int ) ;
 TYPE_2__ server ;

void clusterBroadcastPause(robj *qname, uint32_t flags) {
    clusterSendPause(qname,flags,server.cluster->nodes);
}
