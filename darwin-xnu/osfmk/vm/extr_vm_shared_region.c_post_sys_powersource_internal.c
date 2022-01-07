
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_SPIN_TRIES ;
 scalar_t__ __commpage_setup ;
 int __system_power_source ;
 int commpage_set_spin_count (int ) ;

__attribute__((used)) static void
post_sys_powersource_internal(int i, int internal)
{
 if (internal == 0)
  __system_power_source = i;

 if (__commpage_setup != 0) {
  if (__system_power_source != 0)
   commpage_set_spin_count(0);
  else
   commpage_set_spin_count(MP_SPIN_TRIES);
 }
}
