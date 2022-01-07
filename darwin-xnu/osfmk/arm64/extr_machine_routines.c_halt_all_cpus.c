
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 int PEHaltRestart (int ) ;
 int kPEHaltCPU ;
 int kPERestartCPU ;
 int printf (char*) ;

__attribute__((noreturn))
void
halt_all_cpus(boolean_t reboot)
{
 if (reboot) {
  printf("MACH Reboot\n");
  PEHaltRestart(kPERestartCPU);
 } else {
  printf("CPU halted\n");
  PEHaltRestart(kPEHaltCPU);
 }
 while (1);
}
