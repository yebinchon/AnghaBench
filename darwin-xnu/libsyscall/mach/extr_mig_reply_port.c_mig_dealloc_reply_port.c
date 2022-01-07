
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mach_port_t ;


 scalar_t__ MACH_PORT_NULL ;
 int MACH_PORT_RIGHT_RECEIVE ;
 scalar_t__ _mig_get_reply_port () ;
 int _mig_set_reply_port (scalar_t__) ;
 scalar_t__ _task_reply_port ;
 int mach_port_deallocate (int ,scalar_t__) ;
 int mach_port_mod_refs (int ,scalar_t__,int ,int) ;
 int mach_task_self () ;

void
mig_dealloc_reply_port(mach_port_t migport)
{
 mach_port_t port = _mig_get_reply_port();
 if (port != MACH_PORT_NULL && port != _task_reply_port) {
  _mig_set_reply_port(_task_reply_port);
  (void) mach_port_mod_refs(mach_task_self(), port, MACH_PORT_RIGHT_RECEIVE, -1);
  if (migport != port) {
   (void) mach_port_deallocate(mach_task_self(), migport);
  }
  _mig_set_reply_port(MACH_PORT_NULL);
 }
}
