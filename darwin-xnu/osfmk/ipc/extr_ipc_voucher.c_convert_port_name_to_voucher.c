
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef int kern_return_t ;
typedef int ipc_voucher_t ;
typedef int ipc_port_t ;


 int IV_NULL ;
 int KERN_SUCCESS ;
 scalar_t__ MACH_PORT_VALID (int ) ;
 int convert_port_to_voucher (int ) ;
 int current_space () ;
 int ip_unlock (int ) ;
 int ipc_port_translate_send (int ,int ,int *) ;

ipc_voucher_t
convert_port_name_to_voucher(
 mach_port_name_t voucher_name)
{
 ipc_voucher_t iv;
 kern_return_t kr;
 ipc_port_t port;

 if (MACH_PORT_VALID(voucher_name)) {
  kr = ipc_port_translate_send(current_space(), voucher_name, &port);
  if (KERN_SUCCESS != kr)
   return IV_NULL;

  iv = convert_port_to_voucher(port);
  ip_unlock(port);
  return iv;
 }
 return IV_NULL;
}
