
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_8__ {TYPE_1__* cluster; } ;
struct TYPE_6__ {int nodes; } ;


 int C_ERR ;
 int C_OK ;
 int DICT_OK ;
 int dictAdd (int ,int ,TYPE_2__*) ;
 TYPE_3__ server ;

int clusterAddNode(clusterNode *node) {
    int retval;

    retval = dictAdd(server.cluster->nodes, node->name, node);
    return (retval == DICT_OK) ? C_OK : C_ERR;
}
