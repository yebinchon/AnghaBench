
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nb_cpus ;
typedef int cpuset ;
typedef int cpu_set_t ;
struct TYPE_3__ {int dwNumberOfProcessors; } ;
typedef TYPE_1__ SYSTEM_INFO ;
typedef int DWORD_PTR ;


 int AV_LOG_DEBUG ;
 int CPU_COUNT (int *) ;
 int CPU_ZERO (int *) ;
 int CTL_HW ;
 int GetCurrentProcess () ;
 int GetNativeSystemInfo (TYPE_1__*) ;
 scalar_t__ GetProcessAffinityMask (int ,int *,int *) ;
 int HW_NCPU ;
 int _SC_NPROCESSORS_ONLN ;
 int _SC_NPROC_ONLN ;
 int av_log (int *,int ,char*,int) ;
 int av_popcount64 (int ) ;
 int sched_getaffinity (int ,int,int *) ;
 int sysconf (int ) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

int av_cpu_count(void)
{
    static volatile int printed;

    int nb_cpus = 1;
    if (!printed) {
        av_log(((void*)0), AV_LOG_DEBUG, "detected %d logical cores\n", nb_cpus);
        printed = 1;
    }

    return nb_cpus;
}
