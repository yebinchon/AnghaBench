
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mach_port_t ;


 scalar_t__ MACH_PORT_NULL ;
 scalar_t__ _mig_get_reply_port () ;
 int _mig_set_reply_port (scalar_t__) ;
 scalar_t__ mach_reply_port () ;

mach_port_t
mig_get_reply_port(void)
{
 mach_port_t port = _mig_get_reply_port();
 if (port == MACH_PORT_NULL) {
  port = mach_reply_port();
  _mig_set_reply_port(port);
 }
 return port;
}
