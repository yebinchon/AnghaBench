
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nodes_delivered; int id; } ;
typedef TYPE_1__ job ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_8__ {int name; } ;
typedef TYPE_2__ clusterNode ;


 int dictAdd (int ,int ,TYPE_2__*) ;
 int * dictGetIterator (int ) ;
 TYPE_2__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 TYPE_1__* lookupJob (int ) ;

void updateJobNodes(job *j) {
    job *old = lookupJob(j->id);
    if (!old) return;

    dictIterator *di = dictGetIterator(j->nodes_delivered);
    dictEntry *de;

    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);
        dictAdd(old->nodes_delivered,node->name,node);
    }
    dictReleaseIterator(di);
}
