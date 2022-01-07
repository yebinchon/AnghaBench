
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sds ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_8__ {TYPE_1__* cluster; } ;
struct TYPE_6__ {int nodes; } ;


 int CLUSTER_NAMELEN ;
 int DICT_OK ;
 int LL_DEBUG ;
 int clusterAddNode (TYPE_2__*) ;
 int dictDelete (int ,int ) ;
 int memcpy (int ,char*,int ) ;
 int sdsfree (int ) ;
 int sdsnewlen (int ,int ) ;
 TYPE_3__ server ;
 int serverAssert (int) ;
 int serverLog (int ,char*,int ,char*) ;

void clusterRenameNode(clusterNode *node, char *newname) {
    int retval;
    sds s = sdsnewlen(node->name, CLUSTER_NAMELEN);

    serverLog(LL_DEBUG,"Renaming node %.40s into %.40s",
        node->name, newname);
    retval = dictDelete(server.cluster->nodes, s);
    sdsfree(s);
    serverAssert(retval == DICT_OK);
    memcpy(node->name, newname, CLUSTER_NAMELEN);
    clusterAddNode(node);
}
