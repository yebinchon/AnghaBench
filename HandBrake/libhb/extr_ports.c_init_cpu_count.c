
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int uint8_t ;
struct TYPE_5__ {int cpu_count; } ;
typedef TYPE_1__ system_info ;
typedef int processorid_t ;
typedef int p_aff ;
typedef int cpu_set_t ;
typedef int cpu_count ;
struct TYPE_6__ {int dwNumberOfProcessors; } ;
typedef TYPE_2__ SYSTEM_INFO ;


 int CTL_HW ;
 int GetSystemInfo (TYPE_2__*) ;
 int HW_NCPU ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int P_STATUS ;
 int _SC_CPUID_MAX ;
 int get_system_info (TYPE_1__*) ;
 int memset (int *,int ,int) ;
 int p_online (int,int ) ;
 int sched_getaffinity (int ,int,int *) ;
 int sysconf (int ) ;
 scalar_t__ sysctl (int*,int,int*,size_t*,int *,int ) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static int init_cpu_count()
{
    int cpu_count = 1;
    cpu_count = MAX( 1, cpu_count );
    cpu_count = MIN( cpu_count, 64 );

    return cpu_count;
}
