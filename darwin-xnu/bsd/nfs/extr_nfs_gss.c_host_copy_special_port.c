
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;


 int ipc_port_copy_send (int ) ;

__attribute__((used)) static mach_port_t
host_copy_special_port(mach_port_t mp)
{
 return (ipc_port_copy_send(mp));
}
