
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_kobject_t ;


 int IKOT_UX_HANDLER ;
 scalar_t__ IP_NULL ;
 int ipc_kobject_set (scalar_t__,int ,int ) ;
 scalar_t__ ipc_port_alloc_kernel () ;
 int panic (char*) ;
 int ux_handler_kobject ;
 scalar_t__ ux_handler_port ;

void
ux_handler_init(void)
{
 ux_handler_port = ipc_port_alloc_kernel();

 if (ux_handler_port == IP_NULL)
  panic("can't allocate unix exception port");

 ipc_kobject_set(ux_handler_port, (ipc_kobject_t)&ux_handler_kobject, IKOT_UX_HANDLER);
}
