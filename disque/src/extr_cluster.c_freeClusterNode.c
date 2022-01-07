
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int flags; int name; int fail_reports; scalar_t__ link; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_10__ {TYPE_1__* cluster; } ;
struct TYPE_8__ {int deleted_nodes; int nodes; } ;


 int CLUSTER_NODE_DELETED ;
 scalar_t__ DICT_OK ;
 int dictAdd (int ,int ,TYPE_2__*) ;
 scalar_t__ dictDelete (int ,int ) ;
 int freeClusterLink (scalar_t__) ;
 int listRelease (int ) ;
 scalar_t__ nodeInHandshake (TYPE_2__*) ;
 TYPE_4__ server ;
 int serverAssert (int) ;
 int zfree (TYPE_2__*) ;

void freeClusterNode(clusterNode *n) {
    serverAssert(dictDelete(server.cluster->nodes,n->name) == DICT_OK);
    if (n->link) freeClusterLink(n->link);



    if (nodeInHandshake(n)) {
        listRelease(n->fail_reports);
        zfree(n);
    } else {
        dictAdd(server.cluster->deleted_nodes,n->name,n);
        n->flags |= CLUSTER_NODE_DELETED;
    }
}
