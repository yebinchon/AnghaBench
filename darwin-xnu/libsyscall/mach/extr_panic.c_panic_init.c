
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;


 int master_host_port ;

void
panic_init(mach_port_t port)
{
 master_host_port = port;
}
