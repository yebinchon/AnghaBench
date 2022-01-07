
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int fail_reports; scalar_t__ port; int ip; int * link; scalar_t__ fail_time; scalar_t__ pong_received; scalar_t__ ping_sent; int ctime; int name; } ;
typedef TYPE_1__ clusterNode ;


 int CLUSTER_NAMELEN ;
 int getRandomHexChars (int ,int ) ;
 int listCreate () ;
 int listSetFreeMethod (int ,int ) ;
 int memcpy (int ,char*,int ) ;
 int memset (int ,int ,int) ;
 int mstime () ;
 int zfree ;
 TYPE_1__* zmalloc (int) ;

clusterNode *createClusterNode(char *nodename, int flags) {
    clusterNode *node = zmalloc(sizeof(*node));

    if (nodename)
        memcpy(node->name, nodename, CLUSTER_NAMELEN);
    else
        getRandomHexChars(node->name, CLUSTER_NAMELEN);
    node->ctime = mstime();
    node->flags = flags;
    node->ping_sent = node->pong_received = 0;
    node->fail_time = 0;
    node->link = ((void*)0);
    memset(node->ip,0,sizeof(node->ip));
    node->port = 0;
    node->fail_reports = listCreate();
    listSetFreeMethod(node->fail_reports,zfree);
    return node;
}
