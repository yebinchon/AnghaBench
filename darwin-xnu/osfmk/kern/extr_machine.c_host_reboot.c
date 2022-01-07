
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int * host_priv_t ;


 int Debugger (char*) ;
 int * HOST_PRIV_NULL ;
 int HOST_REBOOT_DEBUGGER ;
 int HOST_REBOOT_HALT ;
 int HOST_REBOOT_UPSDELAY ;
 int KERN_INVALID_HOST ;
 int KERN_SUCCESS ;
 int PEHaltRestart (int ) ;
 int assert (int) ;
 int halt_all_cpus (int) ;
 int kPEUPSDelayHaltCPU ;
 int realhost ;

kern_return_t
host_reboot(
 host_priv_t host_priv,
 int options)
{
 if (host_priv == HOST_PRIV_NULL)
  return (KERN_INVALID_HOST);

 assert(host_priv == &realhost);
    if (options & HOST_REBOOT_UPSDELAY) {

        PEHaltRestart( kPEUPSDelayHaltCPU );
    } else {
       halt_all_cpus(!(options & HOST_REBOOT_HALT));
    }

 return (KERN_SUCCESS);
}
