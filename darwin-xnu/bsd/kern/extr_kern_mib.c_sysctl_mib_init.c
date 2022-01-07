
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int neon_fp16; int neon_hpfp; int neon; } ;
typedef TYPE_1__ arm_mvfp_info_t ;
struct TYPE_9__ {int num_breakpoint_pairs; int num_watchpoint_pairs; } ;
struct TYPE_8__ {scalar_t__ c_l2size; scalar_t__ c_dsize; } ;
struct TYPE_7__ {int thread_count; } ;


 int CPU_ARCH_ABI64 ;
 scalar_t__ CPU_THREADTYPE_NONE ;
 int _get_cpu_capabilities () ;
 TYPE_5__* arm_debug_info () ;
 TYPE_1__* arm_mvfp_info () ;
 int breakpoint_flag ;
 TYPE_3__* cache_info () ;
 int* cacheconfig ;
 scalar_t__* cachesize ;
 int cpu64bit ;
 int cpu_subtype () ;
 scalar_t__ cpu_threadtype () ;
 int cpu_type () ;
 int cpufamily ;
 int cpuid_cpufamily () ;
 int cpuid_get_cpufamily () ;
 TYPE_2__* cpuid_info () ;
 int cpusubtype ;
 scalar_t__ cputhreadtype ;
 int cputype ;
 int gNeon ;
 int gNeonFp16 ;
 int gNeonHpfp ;
 int k64Bit ;
 int ml_cpu_cache_sharing (int) ;
 scalar_t__ ml_cpu_cache_size (int) ;
 scalar_t__ ml_get_machine_mem () ;
 int ml_get_max_cpus () ;
 int packages ;
 int roundup (int,int) ;
 int sysctl__hw_cputhreadtype ;
 int sysctl_register_oid (int *) ;
 int watchpoint_flag ;

void
sysctl_mib_init(void)
{
 cputype = cpu_type();
 cpusubtype = cpu_subtype();
 cputhreadtype = cpu_threadtype();

 cpu64bit = (_get_cpu_capabilities() & k64Bit) == k64Bit;
 if (cputhreadtype != CPU_THREADTYPE_NONE) {
  sysctl_register_oid(&sysctl__hw_cputhreadtype);
 }



 cpufamily = cpuid_cpufamily();


 cacheconfig[0] = ml_cpu_cache_sharing(0);
 cacheconfig[1] = ml_cpu_cache_sharing(1);
 cacheconfig[2] = ml_cpu_cache_sharing(2);
 cacheconfig[3] = ml_cpu_cache_sharing(3);
 cacheconfig[4] = 0;


 cachesize[0] = ml_cpu_cache_size(0);
 cachesize[1] = ml_cpu_cache_size(1);
 cachesize[2] = ml_cpu_cache_size(2);
 cachesize[3] = ml_cpu_cache_size(3);
 cachesize[4] = 0;


 packages = roundup(ml_cpu_cache_sharing(0), cpuid_info()->thread_count)
   / cpuid_info()->thread_count;
}
