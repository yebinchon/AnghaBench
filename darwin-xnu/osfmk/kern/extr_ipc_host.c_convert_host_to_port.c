
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_port_t ;
typedef int host_t ;


 int host_get_host_port (int ,int *) ;

ipc_port_t
convert_host_to_port(
 host_t host)
{
 ipc_port_t port;

 host_get_host_port(host, &port);
 return port;
}
