
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;


 int MACH_PORT_VALID (int ) ;
 int _tsd_get_special_reply_port () ;
 int _tsd_set_special_reply_port (int ) ;
 int thread_get_special_reply_port () ;

mach_port_t
mig_get_special_reply_port(void)
{
 mach_port_t srp;

 srp = _tsd_get_special_reply_port();
 if (!MACH_PORT_VALID(srp)) {
  srp = thread_get_special_reply_port();
  _tsd_set_special_reply_port(srp);
 }

 return srp;
}
