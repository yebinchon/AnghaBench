
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dictIterator ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_3__ {int flags; int link; } ;
typedef TYPE_1__ clusterNode ;


 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_NODE_MYSELF ;
 int clusterSendMessage (int ,void*,size_t) ;
 TYPE_1__* dictGetKey (int *) ;
 int * dictGetSafeIterator (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;

void clusterBroadcastMessage(dict *nodes, void *buf, size_t len) {
    dictIterator *di;
    dictEntry *de;

    di = dictGetSafeIterator(nodes);
    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetKey(de);

        if (!node->link) continue;
        if (node->flags & (CLUSTER_NODE_MYSELF|CLUSTER_NODE_HANDSHAKE))
            continue;
        clusterSendMessage(node->link,buf,len);
    }
    dictReleaseIterator(di);
}
