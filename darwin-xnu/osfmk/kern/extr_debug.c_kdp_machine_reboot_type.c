
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PEHaltRestart (unsigned int) ;
 int TRUE ;
 int halt_all_cpus (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
kdp_machine_reboot_type(unsigned int type)
{
 printf("Attempting system restart...");
 PEHaltRestart(type);
 halt_all_cpus(TRUE);
}
