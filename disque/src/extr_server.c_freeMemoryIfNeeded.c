
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mstime_t ;
struct TYPE_6__ {scalar_t__ state; scalar_t__ retry; int flags; } ;
typedef TYPE_1__ job ;
typedef int dictEntry ;
struct TYPE_7__ {scalar_t__ maxmemory_policy; int maxmemory; int jobs; } ;


 int C_ERR ;
 int C_OK ;
 int DISQUE_NOT_FREED_MAX_LEN ;
 int JOB_FLAG_DELIVERED ;
 scalar_t__ JOB_STATE_ACKED ;
 scalar_t__ MAXMEMORY_NO_EVICTION ;
 TYPE_1__* dictGetKey (int *) ;
 int * dictGetRandomKey (int ) ;
 scalar_t__ evictIdleQueues () ;
 int freeJob (TYPE_1__*) ;
 int getMemoryWarningLevel () ;
 int latencyAddSampleIfNeeded (char*,int) ;
 int latencyEndMonitor (int) ;
 int latencyStartMonitor (int) ;
 int mstime () ;
 TYPE_3__ server ;
 int unregisterJob (TYPE_1__*) ;
 size_t zmalloc_used_memory () ;

int freeMemoryIfNeeded(void) {
    size_t mem_used, mem_tofree, mem_freed, mem_target;
    mstime_t latency;



    if (getMemoryWarningLevel() < 2) return C_OK;

    if (server.maxmemory_policy == MAXMEMORY_NO_EVICTION)
        return C_ERR;


    mem_used = zmalloc_used_memory();
    mem_target = server.maxmemory / 100 * 95;





    if (mem_used <= mem_target) return C_OK;



    mem_tofree = mem_used - mem_target;
    mem_freed = 0;
    latencyStartMonitor(latency);

    int not_freed = 0;
    while (mem_freed < mem_tofree) {
        long long delta;
        dictEntry *de;







        de = dictGetRandomKey(server.jobs);
        delta = (long long) zmalloc_used_memory();



        if (de == ((void*)0)) {
            if (evictIdleQueues() == 0) return C_ERR;
        } else {
            job *job = dictGetKey(de);
            if ((job->state == JOB_STATE_ACKED) ||
                (job->retry == 0 && job->flags & JOB_FLAG_DELIVERED))
            {
                unregisterJob(job);
                freeJob(job);
                not_freed = 0;
            } else {
                not_freed++;
            }
        }

        delta -= (long long) zmalloc_used_memory();
        mem_freed += delta;




        if (not_freed > DISQUE_NOT_FREED_MAX_LEN || (mstime() - latency) > 1) {
            latencyEndMonitor(latency);
            latencyAddSampleIfNeeded("eviction-cycle",latency);
            return C_ERR;
        }
    }
    latencyEndMonitor(latency);
    latencyAddSampleIfNeeded("eviction-cycle",latency);
    return C_OK;
}
