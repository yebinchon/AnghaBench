
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ktrace_active_mask ;
 int ktrace_keep_ownership_on_reset ;
 int ktrace_reset_internal (int ) ;

void
ktrace_set_invalid_owning_pid(void)
{
 if (ktrace_keep_ownership_on_reset) {
  ktrace_keep_ownership_on_reset = 0;
  ktrace_reset_internal(ktrace_active_mask);
 }
}
