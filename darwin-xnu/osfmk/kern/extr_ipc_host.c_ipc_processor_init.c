
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
typedef scalar_t__ ipc_port_t ;
struct TYPE_3__ {scalar_t__ processor_self; } ;


 scalar_t__ IP_NULL ;
 scalar_t__ ipc_port_alloc_kernel () ;
 int panic (char*) ;

void
ipc_processor_init(
 processor_t processor)
{
 ipc_port_t port;

 port = ipc_port_alloc_kernel();
 if (port == IP_NULL)
  panic("ipc_processor_init");
 processor->processor_self = port;
}
