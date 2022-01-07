
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
typedef scalar_t__ ipc_port_t ;
struct TYPE_3__ {scalar_t__ processor_self; } ;


 scalar_t__ IP_NULL ;
 scalar_t__ ipc_port_make_send (scalar_t__) ;

ipc_port_t
convert_processor_to_port(
 processor_t processor)
{
 ipc_port_t port = processor->processor_self;

 if (port != IP_NULL)
  port = ipc_port_make_send(port);
 return port;
}
