
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int dt_stat_t ;
typedef int deltas ;


 int T_ASSERT_POSIX_SUCCESS (int,char*,char const*) ;
 int T_QUIET ;
 int T_SETUPBEGIN ;
 int T_SETUPEND ;
 int dt_stat_add (int ,double) ;
 int dt_stat_create (char*,char*,char const*) ;
 int dt_stat_finalize (int ) ;
 int dt_stat_stable (int ) ;
 int skip_if_unsupported () ;
 int sysctlbyname (char const*,scalar_t__*,size_t*,int *,int ) ;

__attribute__((used)) static void
perf_sysctl_deltas(const char *sysctl_name, const char *stat_name)
{
 uint64_t deltas[2];
 size_t deltas_size;
 int r;

 T_SETUPBEGIN;
 skip_if_unsupported();

 dt_stat_t instrs = dt_stat_create("instructions", "%s_instrs",
   stat_name);
 dt_stat_t cycles = dt_stat_create("cycles", "%s_cycles", stat_name);
 T_SETUPEND;

 while (!dt_stat_stable(instrs) || !dt_stat_stable(cycles)) {
  deltas_size = sizeof(deltas);
  r = sysctlbyname(sysctl_name, deltas, &deltas_size, ((void*)0), 0);
  T_QUIET;
  T_ASSERT_POSIX_SUCCESS(r, "sysctlbyname(\"%s\", ...)", sysctl_name);
  dt_stat_add(instrs, (double)deltas[0]);
  dt_stat_add(cycles, (double)deltas[1]);
 }

 dt_stat_finalize(instrs);
 dt_stat_finalize(cycles);
}
