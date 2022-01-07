
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int ipc_port_t ;
typedef scalar_t__ host_priv_t ;


 int HOST_MAX_SPECIAL_KERNEL_PORT ;
 int HOST_MAX_SPECIAL_PORT ;
 scalar_t__ HOST_PRIV_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_NO_ACCESS ;
 int current_task () ;
 int kernel_set_special_port (scalar_t__,int,int ) ;
 scalar_t__ mac_task_check_set_host_special_port (int ,int,int ) ;

kern_return_t
host_set_special_port(host_priv_t host_priv, int id, ipc_port_t port)
{
 if (host_priv == HOST_PRIV_NULL || id <= HOST_MAX_SPECIAL_KERNEL_PORT || id > HOST_MAX_SPECIAL_PORT)
  return (KERN_INVALID_ARGUMENT);






 return (kernel_set_special_port(host_priv, id, port));
}
