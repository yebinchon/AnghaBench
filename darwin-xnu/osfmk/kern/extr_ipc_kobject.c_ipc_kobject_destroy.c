
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_port_t ;





 int host_notify_port_destroy (int ) ;
 int ip_kotype (int ) ;
 int mach_destroy_memory_entry (int ) ;
 int mk_timer_port_destroy (int ) ;

void
ipc_kobject_destroy(
 ipc_port_t port)
{
 switch (ip_kotype(port)) {

 case 128:
  mk_timer_port_destroy(port);
  break;

 case 129:
  mach_destroy_memory_entry(port);
  break;

 case 130:
  host_notify_port_destroy(port);
  break;

 default:
  break;
 }
}
