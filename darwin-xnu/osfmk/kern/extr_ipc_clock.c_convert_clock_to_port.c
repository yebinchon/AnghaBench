
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ipc_port_t ;
typedef TYPE_1__* clock_t ;
struct TYPE_3__ {int cl_service; } ;


 int ipc_port_make_send (int ) ;

ipc_port_t
convert_clock_to_port(
 clock_t clock)
{
 ipc_port_t port;

 port = ipc_port_make_send(clock->cl_service);
 return (port);
}
