
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kpc_configured ;
 int restore_regs () ;

void
kpc_idle_exit(void)
{
 if (kpc_configured) {
  restore_regs();
 }
}
