
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;


 int MACH_PORT_NULL ;

mach_port_t
mig_get_reply_port(void)
{
 return (MACH_PORT_NULL);
}
