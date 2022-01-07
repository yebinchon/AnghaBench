
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int posix_spawnattr_t ;


 int PROC_POLICY_CPUMON_DEFAULTS ;
 int posix_spawnattr_setcpumonitor (int *,int ,int ) ;

int
posix_spawnattr_setcpumonitor_default(posix_spawnattr_t * __restrict attr)
{
 return (posix_spawnattr_setcpumonitor(attr, PROC_POLICY_CPUMON_DEFAULTS, 0));
}
