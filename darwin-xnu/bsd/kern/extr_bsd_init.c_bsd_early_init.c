
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysctl_early_init () ;

void
bsd_early_init(void)
{
 sysctl_early_init();
}
