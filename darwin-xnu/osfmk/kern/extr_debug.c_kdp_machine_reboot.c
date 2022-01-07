
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kPEPanicRestartCPU ;
 int kdp_machine_reboot_type (int ) ;

void
kdp_machine_reboot(void)
{
 kdp_machine_reboot_type(kPEPanicRestartCPU);
}
