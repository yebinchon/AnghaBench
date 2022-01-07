
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
 int KERN_SUCCESS ;
 int assert (int) ;
 int commpage_update_multiuser_config (int) ;
 int kIsMultiUserDevice ;
 int realhost ;

kern_return_t
host_set_multiuser_config_flags(host_priv_t host_priv, uint32_t multiuser_config)
{
 (void)host_priv;
 (void)multiuser_config;
 return (KERN_NOT_SUPPORTED);

}
