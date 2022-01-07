
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kern_return_t ;
typedef int * host_priv_t ;


 int * HOST_PRIV_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_NOT_SUPPORTED ;
 int assert (int) ;
 int atm_set_diagnostic_config (int ) ;
 int realhost ;

kern_return_t
host_set_atm_diagnostic_flag(host_priv_t host_priv, uint32_t diagnostic_flag)
{
 if (host_priv == HOST_PRIV_NULL)
  return (KERN_INVALID_ARGUMENT);

 assert(host_priv == &realhost);




 (void)diagnostic_flag;
 return (KERN_NOT_SUPPORTED);

}
