
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int * posix_spawnattr_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
struct TYPE_2__ {void* psa_cpumonitor_interval; void* psa_cpumonitor_percent; } ;


 int EINVAL ;

int
posix_spawnattr_setcpumonitor(posix_spawnattr_t * __restrict attr,
  uint64_t percent, uint64_t interval)
{
 _posix_spawnattr_t psattr;

 if (attr == ((void*)0) || *attr == ((void*)0))
  return (EINVAL);

 psattr = *(_posix_spawnattr_t *)attr;

 psattr->psa_cpumonitor_percent = percent;
 psattr->psa_cpumonitor_interval = interval;

 return (0);
}
