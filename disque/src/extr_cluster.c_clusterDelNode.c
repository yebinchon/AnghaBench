
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int dictIterator ;
typedef int dictEntry ;
typedef int clusterNode ;
struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {int nodes; } ;


 int clusterNodeDelFailureReport (int *,int *) ;
 int * dictGetSafeIterator (int ) ;
 int * dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int freeClusterNode (int *) ;
 TYPE_2__ server ;

void clusterDelNode(clusterNode *delnode) {
    dictIterator *di;
    dictEntry *de;


    di = dictGetSafeIterator(server.cluster->nodes);
    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);

        if (node == delnode) continue;
        clusterNodeDelFailureReport(node,delnode);
    }
    dictReleaseIterator(di);


    freeClusterNode(delnode);
}
