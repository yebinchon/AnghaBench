
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kern_return_t ;
typedef int ipc_port_t ;


 int EXCEPTION_DEFAULT ;
 int EXC_MASK_ALL ;
 int EXC_MASK_RPC_ALERT ;
 int IP_VALID (int ) ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_EXCEPTION_CODES ;
 int host_priv_self () ;
 scalar_t__ host_set_exception_ports (int ,int,int ,int,int ) ;
 int ipc_port_make_send (int ) ;
 int panic (char*,...) ;
 int ux_handler_port ;

void
ux_handler_setup(void)
{
 ipc_port_t ux_handler_send_right = ipc_port_make_send(ux_handler_port);

 if (!IP_VALID(ux_handler_send_right))
  panic("Couldn't allocate send right for ux_handler_port!\n");

 kern_return_t kr = KERN_SUCCESS;






 kr = host_set_exception_ports(host_priv_self(),
                               EXC_MASK_ALL & ~(EXC_MASK_RPC_ALERT),
                               ux_handler_send_right,
                               EXCEPTION_DEFAULT | MACH_EXCEPTION_CODES,
                               0);

 if (kr != KERN_SUCCESS)
  panic("host_set_exception_ports failed to set ux_handler! %d", kr);
}
