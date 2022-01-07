
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int mstime_t ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_14__ {int flags; int ctime; scalar_t__ ping_sent; int pong_received; int name; TYPE_3__* link; scalar_t__ port; int ip; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_15__ {int fd; int ctime; } ;
typedef TYPE_3__ clusterLink ;
struct TYPE_16__ {int cluster_node_timeout; TYPE_1__* cluster; int el; int neterr; } ;
struct TYPE_13__ {scalar_t__ state; int nodes; } ;


 int AE_READABLE ;
 int CLUSTERMSG_TYPE_MEET ;
 int CLUSTERMSG_TYPE_PING ;
 scalar_t__ CLUSTER_FAIL ;
 int CLUSTER_NODE_FAIL ;
 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_NODE_MEET ;
 int CLUSTER_NODE_MYSELF ;
 int CLUSTER_NODE_NOADDR ;
 int CLUSTER_NODE_PFAIL ;
 scalar_t__ CLUSTER_PORT_INCR ;
 int LL_DEBUG ;
 int NET_FIRST_BIND_ADDR ;
 int aeCreateFileEvent (int ,int,int ,int ,TYPE_3__*) ;
 int anetEnableTcpNoDelay (int *,int) ;
 int anetTcpNonBlockBindConnect (int ,int ,scalar_t__,int ) ;
 int clusterDelNode (TYPE_2__*) ;
 int clusterReadHandler ;
 int clusterSendPing (TYPE_3__*,int ) ;
 int clusterUpdateReachableNodes () ;
 int clusterUpdateState () ;
 TYPE_3__* createClusterLink (TYPE_2__*) ;
 int * dictGetRandomKey (int ) ;
 int * dictGetSafeIterator (int ) ;
 TYPE_2__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int freeClusterLink (TYPE_3__*) ;
 void* mstime () ;
 scalar_t__ nodeInHandshake (TYPE_2__*) ;
 TYPE_4__ server ;
 int serverLog (int ,char*,int ,...) ;

void clusterCron(void) {
    dictIterator *di;
    dictEntry *de;
    int update_state = 0;
    mstime_t min_pong = 0, now = mstime();
    clusterNode *min_pong_node = ((void*)0);
    static unsigned long long iteration = 0;
    mstime_t handshake_timeout;

    iteration++;





    handshake_timeout = server.cluster_node_timeout;
    if (handshake_timeout < 1000) handshake_timeout = 1000;


    di = dictGetSafeIterator(server.cluster->nodes);
    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);

        if (node->flags & (CLUSTER_NODE_MYSELF|CLUSTER_NODE_NOADDR)) continue;



        if (nodeInHandshake(node) && now - node->ctime > handshake_timeout) {
            clusterDelNode(node);
            continue;
        }

        if (node->link == ((void*)0)) {
            int fd;
            mstime_t old_ping_sent;
            clusterLink *link;

            fd = anetTcpNonBlockBindConnect(server.neterr, node->ip,
                node->port+CLUSTER_PORT_INCR, NET_FIRST_BIND_ADDR);
            if (fd == -1) {





                if (node->ping_sent == 0) node->ping_sent = mstime();
                serverLog(LL_DEBUG, "Unable to connect to "
                    "Cluster Node [%s]:%d -> %s", node->ip,
                    node->port+CLUSTER_PORT_INCR,
                    server.neterr);
                continue;
            }
            anetEnableTcpNoDelay(((void*)0),fd);
            link = createClusterLink(node);
            link->fd = fd;
            node->link = link;
            aeCreateFileEvent(server.el,link->fd,AE_READABLE,
                    clusterReadHandler,link);






            old_ping_sent = node->ping_sent;
            clusterSendPing(link, node->flags & CLUSTER_NODE_MEET ?
                    CLUSTERMSG_TYPE_MEET : CLUSTERMSG_TYPE_PING);
            if (old_ping_sent) {



                node->ping_sent = old_ping_sent;
            }





            node->flags &= ~CLUSTER_NODE_MEET;

            serverLog(LL_DEBUG,"Connecting with Node %.40s at %s:%d",
                    node->name, node->ip, node->port+CLUSTER_PORT_INCR);
        }
    }
    dictReleaseIterator(di);



    if (!(iteration % 10)) {
        int j;



        for (j = 0; j < 5; j++) {
            de = dictGetRandomKey(server.cluster->nodes);
            clusterNode *this = dictGetVal(de);


            if (this->link == ((void*)0) || this->ping_sent != 0) continue;
            if (this->flags & (CLUSTER_NODE_MYSELF|CLUSTER_NODE_HANDSHAKE))
                continue;
            if (min_pong_node == ((void*)0) || min_pong > this->pong_received) {
                min_pong_node = this;
                min_pong = this->pong_received;
            }
        }
        if (min_pong_node) {
            serverLog(LL_DEBUG,"Pinging node %.40s", min_pong_node->name);
            clusterSendPing(min_pong_node->link, CLUSTERMSG_TYPE_PING);
        }
    }







    di = dictGetSafeIterator(server.cluster->nodes);
    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);
        now = mstime();
        mstime_t delay;

        if (node->flags &
            (CLUSTER_NODE_MYSELF|CLUSTER_NODE_NOADDR|CLUSTER_NODE_HANDSHAKE))
                continue;




        if (node->link &&
            now - node->link->ctime >
            server.cluster_node_timeout &&
            node->ping_sent &&
            node->pong_received < node->ping_sent &&

            now - node->ping_sent > server.cluster_node_timeout/2)
        {

            freeClusterLink(node->link);
        }





        if (node->link &&
            node->ping_sent == 0 &&
            (now - node->pong_received) > server.cluster_node_timeout/2)
        {
            clusterSendPing(node->link, CLUSTERMSG_TYPE_PING);
            continue;
        }


        if (node->ping_sent == 0) continue;




        delay = now - node->ping_sent;

        if (delay > server.cluster_node_timeout) {


            if (!(node->flags & (CLUSTER_NODE_PFAIL|CLUSTER_NODE_FAIL))) {
                serverLog(LL_DEBUG,"*** NODE %.40s possibly failing",
                    node->name);
                node->flags |= CLUSTER_NODE_PFAIL;
                update_state = 1;
            }
        }
    }
    dictReleaseIterator(di);

    if (update_state || server.cluster->state == CLUSTER_FAIL)
        clusterUpdateState();

    clusterUpdateReachableNodes();
}
