
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint16_t ;
typedef int sds ;
struct TYPE_18__ {int flags; scalar_t__ port; int ip; int name; } ;
typedef TYPE_3__ clusterNode ;
struct TYPE_19__ {int port; int ip; int nodename; int flags; } ;
typedef TYPE_4__ clusterMsgDataGossip ;
struct TYPE_16__ {scalar_t__ gossip; } ;
struct TYPE_17__ {TYPE_1__ ping; } ;
struct TYPE_20__ {int sender; TYPE_2__ data; int count; } ;
typedef TYPE_5__ clusterMsg ;
struct TYPE_21__ {TYPE_3__* node; } ;
typedef TYPE_6__ clusterLink ;


 int CLUSTER_NODE_FAIL ;
 int CLUSTER_NODE_NOADDR ;
 int CLUSTER_NODE_PFAIL ;
 int LL_DEBUG ;
 int LL_VERBOSE ;
 int clusterBlacklistExists (int ) ;
 TYPE_3__* clusterLookupNode (int ) ;
 scalar_t__ clusterNodeAddFailureReport (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ clusterNodeDelFailureReport (TYPE_3__*,TYPE_3__*) ;
 int clusterStartHandshake (int ,scalar_t__) ;
 int markNodeAsFailingIfNeeded (TYPE_3__*) ;
 TYPE_3__* myself ;
 scalar_t__ ntohs (int ) ;
 int representClusterNodeFlags (int ,int) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int serverLog (int ,char*,int ,int ,...) ;
 scalar_t__ strcasecmp (int ,int ) ;

void clusterProcessGossipSection(clusterMsg *hdr, clusterLink *link) {
    uint16_t count = ntohs(hdr->count);
    clusterMsgDataGossip *g = (clusterMsgDataGossip*) hdr->data.ping.gossip;
    clusterNode *sender = link->node ? link->node : clusterLookupNode(hdr->sender);

    while(count--) {
        uint16_t flags = ntohs(g->flags);
        clusterNode *node;
        sds ci;

        ci = representClusterNodeFlags(sdsempty(), flags);
        serverLog(LL_DEBUG,"GOSSIP %.40s %s:%d %s",
            g->nodename,
            g->ip,
            ntohs(g->port),
            ci);
        sdsfree(ci);


        node = clusterLookupNode(g->nodename);
        if (node) {

            if (sender && node != myself) {
                if (flags & (CLUSTER_NODE_FAIL|CLUSTER_NODE_PFAIL)) {
                    if (clusterNodeAddFailureReport(node,sender)) {
                        serverLog(LL_VERBOSE,
                            "Node %.40s reported node %.40s as not reachable.",
                            sender->name, node->name);
                    }
                    markNodeAsFailingIfNeeded(node);
                } else {
                    if (clusterNodeDelFailureReport(node,sender)) {
                        serverLog(LL_VERBOSE,
                            "Node %.40s reported node %.40s is back online.",
                            sender->name, node->name);
                    }
                }
            }






            if (node->flags & (CLUSTER_NODE_FAIL|CLUSTER_NODE_PFAIL) &&
                (strcasecmp(node->ip,g->ip) || node->port != ntohs(g->port)))
            {
                clusterStartHandshake(g->ip,ntohs(g->port));
            }
        } else {






            if (sender &&
                !(flags & CLUSTER_NODE_NOADDR) &&
                !clusterBlacklistExists(g->nodename))
            {
                clusterStartHandshake(g->ip,ntohs(g->port));
            }
        }


        g++;
    }
}
