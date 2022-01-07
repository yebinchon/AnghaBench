
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int io_master_t ;
typedef scalar_t__ host_t ;


 scalar_t__ HOST_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int host_get_io_master_port (int ,int *) ;
 int host_priv_self () ;

kern_return_t
host_get_io_master(host_t host, io_master_t * io_masterp)
{
 if (host == HOST_NULL)
  return (KERN_INVALID_ARGUMENT);

 return (host_get_io_master_port(host_priv_self(), io_masterp));
}
