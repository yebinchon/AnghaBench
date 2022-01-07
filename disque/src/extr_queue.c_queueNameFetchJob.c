
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;
typedef int queue ;
typedef int job ;


 int * lookupQueue (int *) ;
 int * queueFetchJob (int *,unsigned long*) ;

job *queueNameFetchJob(robj *qname, unsigned long *qlen) {
    queue *q = lookupQueue(qname);
    return q ? queueFetchJob(q,qlen) : ((void*)0);
}
