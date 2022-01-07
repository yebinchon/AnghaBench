
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int robj ;
typedef int queue ;
typedef int dictEntry ;
struct TYPE_2__ {int queues; } ;


 int * dictFind (int ,int *) ;
 int * dictGetVal (int *) ;
 TYPE_1__ server ;

queue *lookupQueue(robj *name) {
    dictEntry *de = dictFind(server.queues,name);
    if (!de) return ((void*)0);
    queue *q = dictGetVal(de);
    return q;
}
