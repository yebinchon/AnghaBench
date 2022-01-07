
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
typedef int queue ;
typedef int mstime_t ;
typedef int dictEntry ;
struct TYPE_2__ {int queues; } ;


 scalar_t__ C_OK ;
 scalar_t__ GCQueue (int *,int) ;
 int QUEUE_MAX_IDLE_TIME ;
 int * dictGetRandomKey (int ) ;
 int * dictGetVal (int *) ;
 scalar_t__ dictSize (int ) ;
 int getMemoryWarningLevel () ;
 int mstime () ;
 TYPE_1__ server ;

int evictIdleQueues(void) {
    mstime_t start = mstime();
    time_t max_idle_time = QUEUE_MAX_IDLE_TIME;
    long sampled = 0, evicted = 0;

    if (getMemoryWarningLevel() > 0) max_idle_time /= 30;
    if (getMemoryWarningLevel() > 1) max_idle_time = 2;
    while (dictSize(server.queues) != 0) {
        dictEntry *de = dictGetRandomKey(server.queues);
        queue *q = dictGetVal(de);

        sampled++;
        if (GCQueue(q,max_idle_time) == C_OK) evicted++;



        if (sampled > 10 && (evicted * 10) < sampled) break;



        if (((sampled+1) % 1000) == 0 && mstime()-start > 1) break;
    }
    return evicted;
}
