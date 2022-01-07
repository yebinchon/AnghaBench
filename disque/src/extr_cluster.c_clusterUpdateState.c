
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_7__ {TYPE_1__* cluster; } ;
struct TYPE_5__ {scalar_t__ size; int nodes; int todo_before_sleep; } ;


 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_TODO_UPDATE_STATE ;
 int * dictGetSafeIterator (int ) ;
 TYPE_2__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 TYPE_3__ server ;

void clusterUpdateState(void) {
    server.cluster->todo_before_sleep &= ~CLUSTER_TODO_UPDATE_STATE;
    {
        dictIterator *di;
        dictEntry *de;

        server.cluster->size = 0;
        di = dictGetSafeIterator(server.cluster->nodes);
        while((de = dictNext(di)) != ((void*)0)) {
            clusterNode *node = dictGetVal(de);

            if (!(node->flags & CLUSTER_NODE_HANDSHAKE))
                server.cluster->size++;
        }
        dictReleaseIterator(di);
    }
}
