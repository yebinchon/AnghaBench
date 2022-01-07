
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ dtrace_id_t ;


 int lockstat_probe (scalar_t__,uintptr_t,int ,int ,int ,int ) ;
 scalar_t__* lockstat_probemap ;
 int stub1 (scalar_t__,uintptr_t,int ,int ,int ,int ) ;

void
lockstat_probe_wrapper(int probe, uintptr_t lp, int rwflag)
{
 dtrace_id_t id;
 id = lockstat_probemap[probe];
 if (id != 0)
 {
  (*lockstat_probe)(id, (uintptr_t)lp, (uint64_t)rwflag, 0,0,0);
 }
}
