
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queues; int jobs; } ;


 scalar_t__ dictIsRehashing (int ) ;
 int dictRehashMilliseconds (int ,int) ;
 TYPE_1__ server ;

int incrementallyRehash(void) {
    if (dictIsRehashing(server.jobs)) {
        dictRehashMilliseconds(server.jobs,1);
        return 1;
    }
    if (dictIsRehashing(server.queues)) {
        dictRehashMilliseconds(server.queues,1);
        return 1;
    }
    return 0;
}
