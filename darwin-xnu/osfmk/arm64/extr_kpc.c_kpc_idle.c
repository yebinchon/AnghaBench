
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kpc_configured ;
 int save_regs () ;

void
kpc_idle(void)
{
 if (kpc_configured) {
  save_regs();
 }
}
