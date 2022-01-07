
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
struct TYPE_3__ {long long name; long long ip; char* port; int flags; scalar_t__ link; scalar_t__ pong_received; scalar_t__ ping_sent; } ;
typedef TYPE_1__ clusterNode ;


 int CLUSTER_NODE_MYSELF ;
 int representClusterNodeFlags (int ,int) ;
 int sdscatprintf (int ,char*,long long,long long,char*) ;
 int sdsempty () ;

sds clusterGenNodeDescription(clusterNode *node) {
    sds ci;


    ci = sdscatprintf(sdsempty(),"%.40s %s:%d ",
        node->name,
        node->ip,
        node->port);


    ci = representClusterNodeFlags(ci, node->flags);


    ci = sdscatprintf(ci," %lld %lld %s",
        (long long) node->ping_sent,
        (long long) node->pong_received,
        (node->link || node->flags & CLUSTER_NODE_MYSELF) ?
                    "connected" : "disconnected");

    return ci;
}
