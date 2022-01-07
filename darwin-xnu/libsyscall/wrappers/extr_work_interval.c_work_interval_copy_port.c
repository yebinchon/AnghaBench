
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* work_interval_t ;
typedef int mach_port_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_3__ {int create_flags; int wi_port; } ;


 int EINVAL ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_NULL ;
 int MACH_PORT_RIGHT_SEND ;
 int WORK_INTERVAL_FLAG_JOINABLE ;
 int errno ;
 scalar_t__ mach_port_mod_refs (int ,int ,int ,int) ;
 int mach_task_self () ;

int
work_interval_copy_port(work_interval_t interval_handle, mach_port_t *port)
{
 if (port == ((void*)0)) {
  errno = EINVAL;
  return -1;
 }

 if (interval_handle == ((void*)0)) {
  *port = MACH_PORT_NULL;
  errno = EINVAL;
  return -1;
 }

 if ((interval_handle->create_flags & WORK_INTERVAL_FLAG_JOINABLE) == 0) {
  *port = MACH_PORT_NULL;
  errno = EINVAL;
  return -1;
 }

 mach_port_t wi_port = interval_handle->wi_port;

 kern_return_t kr = mach_port_mod_refs(mach_task_self(), wi_port,
                                       MACH_PORT_RIGHT_SEND, 1);

 if (kr != KERN_SUCCESS) {
  *port = MACH_PORT_NULL;
  errno = EINVAL;
  return -1;
 }

 *port = wi_port;

 return 0;
}
