
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int EINVAL ;
 int KPC_ALL_CPUS ;
 int kpc_get_shadow_counters (int,int,int*,int*) ;

__attribute__((used)) static int
sysctl_kpc_get_shadow_counters(uint32_t counters,
                      uint32_t *size, void *buf)
{
 uint64_t *ctr_buf = (uint64_t*)buf;
 int curcpu;
 uint32_t count;

 count = kpc_get_shadow_counters(counters & KPC_ALL_CPUS,
                                 counters,
                                 &curcpu, &ctr_buf[1]);

 if (!count)
  return EINVAL;

 ctr_buf[0] = curcpu;

 *size = (count+1) * sizeof(uint64_t);

 return 0;
}
