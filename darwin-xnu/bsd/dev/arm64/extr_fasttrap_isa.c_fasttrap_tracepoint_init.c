
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int proc_t ;
typedef int fasttrap_tracepoint_t ;
typedef int fasttrap_probe_type_t ;


 int fasttrap_tracepoint_init32 (int *,int *,int ,int ) ;
 int fasttrap_tracepoint_init64 (int *,int *,int ,int ) ;
 scalar_t__ proc_is64bit_data (int *) ;

int
fasttrap_tracepoint_init(proc_t *p, fasttrap_tracepoint_t *tp,
    user_addr_t pc, fasttrap_probe_type_t type)
{
 if (proc_is64bit_data(p)) {
  return fasttrap_tracepoint_init64(p, tp, pc, type);
 } else {
  return fasttrap_tracepoint_init32(p, tp, pc, type);
 }
}
