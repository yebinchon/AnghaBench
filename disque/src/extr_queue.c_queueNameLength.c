
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;


 int lookupQueue (int *) ;
 unsigned long queueLength (int ) ;

unsigned long queueNameLength(robj *qname) {
    return queueLength(lookupQueue(qname));
}
