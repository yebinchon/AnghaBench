
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int clusterState ;
struct TYPE_8__ {int port; int name; } ;
struct TYPE_7__ {int cfd_count; int port; int * cfd; int el; TYPE_1__* cluster; int cluster_configfile; } ;
struct TYPE_6__ {int size; TYPE_3__* myself; scalar_t__ reachable_nodes_count; int * reachable_nodes; scalar_t__ stats_bus_messages_received; scalar_t__ stats_bus_messages_sent; void* nodes_black_list; void* deleted_nodes; void* nodes; scalar_t__ todo_before_sleep; int state; } ;


 scalar_t__ AE_ERR ;
 int AE_READABLE ;
 int CLUSTER_NODE_MYSELF ;
 int CLUSTER_OK ;
 int CLUSTER_PORT_INCR ;
 scalar_t__ C_ERR ;
 int LL_NOTICE ;
 int LL_WARNING ;
 scalar_t__ aeCreateFileEvent (int ,int ,int ,int ,int *) ;
 int clusterAcceptHandler ;
 int clusterAddNode (TYPE_3__*) ;
 scalar_t__ clusterLoadConfig (int ) ;
 scalar_t__ clusterLockConfig (int ) ;
 int clusterNodesBlackListDictType ;
 int clusterNodesDictType ;
 int clusterSaveConfigOrDie (int) ;
 int clusterUpdateReachableNodes () ;
 int clusterUpdateState () ;
 TYPE_3__* createClusterNode (int *,int ) ;
 void* dictCreate (int *,int *) ;
 int exit (int) ;
 scalar_t__ listenToPort (int,int *,int*) ;
 TYPE_3__* myself ;
 TYPE_2__ server ;
 int serverLog (int ,char*,...) ;
 int serverPanic (char*) ;
 TYPE_1__* zmalloc (int) ;

void clusterInit(void) {
    int saveconf = 0;

    server.cluster = zmalloc(sizeof(clusterState));
    server.cluster->myself = ((void*)0);
    server.cluster->state = CLUSTER_OK;
    server.cluster->size = 1;
    server.cluster->todo_before_sleep = 0;
    server.cluster->nodes = dictCreate(&clusterNodesDictType,((void*)0));
    server.cluster->deleted_nodes = dictCreate(&clusterNodesDictType,((void*)0));
    server.cluster->nodes_black_list =
        dictCreate(&clusterNodesBlackListDictType,((void*)0));
    server.cluster->stats_bus_messages_sent = 0;
    server.cluster->stats_bus_messages_received = 0;
    server.cluster->reachable_nodes = ((void*)0);
    server.cluster->reachable_nodes_count = 0;



    if (clusterLockConfig(server.cluster_configfile) == C_ERR)
        exit(1);


    if (clusterLoadConfig(server.cluster_configfile) == C_ERR) {


        myself = server.cluster->myself =
            createClusterNode(((void*)0),CLUSTER_NODE_MYSELF);
        serverLog(LL_NOTICE,"No cluster configuration found, I'm %.40s",
            myself->name);
        clusterAddNode(myself);
        saveconf = 1;
    }
    if (saveconf) clusterSaveConfigOrDie(1);


    server.cfd_count = 0;




    if (server.port > (65535-CLUSTER_PORT_INCR)) {
        serverLog(LL_WARNING, "Disque port number too high. "
                   "Cluster communication port is 10,000 port "
                   "numbers higher than your Disque node port. "
                   "Your Disque node port number must be "
                   "lower than 55535.");
        exit(1);
    }

    if (listenToPort(server.port+CLUSTER_PORT_INCR,
        server.cfd,&server.cfd_count) == C_ERR)
    {
        exit(1);
    } else {
        int j;

        for (j = 0; j < server.cfd_count; j++) {
            if (aeCreateFileEvent(server.el, server.cfd[j], AE_READABLE,
                clusterAcceptHandler, ((void*)0)) == AE_ERR)
                    serverPanic("Unrecoverable error creating Disque Cluster "
                                "Bus file event.");
        }
    }



    myself->port = server.port;


    clusterUpdateState();
    clusterUpdateReachableNodes();
}
