
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int dictEntry ;
typedef int clusterNode ;
struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {int nodes; } ;


 int * dictFind (int ,char*) ;
 int * dictGetVal (int *) ;
 TYPE_2__ server ;

clusterNode *clusterLookupNode(char *name) {
    dictEntry *de = dictFind(server.cluster->nodes,name);
    if (de == ((void*)0)) return ((void*)0);
    return dictGetVal(de);
}
