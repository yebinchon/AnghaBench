
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mach_port_t ;


 int MACH_PORT_NULL ;
 scalar_t__ MACH_PORT_VALID (scalar_t__) ;
 int THREAD_SPECIAL_REPLY_PORT_ALL ;
 scalar_t__ _tsd_get_special_reply_port () ;
 int _tsd_set_special_reply_port (int ) ;
 int mach_port_deallocate (int ,scalar_t__) ;
 int mach_task_self () ;
 int thread_destruct_special_reply_port (scalar_t__,int ) ;

void
mig_dealloc_special_reply_port(mach_port_t migport)
{
 mach_port_t srp = _tsd_get_special_reply_port();
 if (MACH_PORT_VALID(srp)) {
  thread_destruct_special_reply_port(srp, THREAD_SPECIAL_REPLY_PORT_ALL);
  if (migport != srp) {
   mach_port_deallocate(mach_task_self(), migport);
  }
  _tsd_set_special_reply_port(MACH_PORT_NULL);
 }
}
