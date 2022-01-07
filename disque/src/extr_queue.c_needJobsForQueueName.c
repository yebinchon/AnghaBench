
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;
typedef int queue ;


 int * createQueue (int *) ;
 int * lookupQueue (int *) ;
 int needJobsForQueue (int *,int) ;

void needJobsForQueueName(robj *qname, int type) {
    queue *q = lookupQueue(qname);



    if (!q) q = createQueue(qname);
    needJobsForQueue(q,type);
}
