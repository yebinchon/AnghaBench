
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* work_interval_t ;
typedef int mach_port_t ;
struct TYPE_3__ {int create_flags; int wi_port; } ;


 int EINVAL ;
 int MACH_PORT_VALID (int ) ;
 int WORK_INTERVAL_FLAG_JOINABLE ;
 int errno ;
 int work_interval_join_port (int ) ;

int
work_interval_join(work_interval_t interval_handle)
{
 if (interval_handle == ((void*)0)) {
  errno = EINVAL;
  return -1;
 }

 if ((interval_handle->create_flags & WORK_INTERVAL_FLAG_JOINABLE) == 0) {
  errno = EINVAL;
  return -1;
 }

 mach_port_t wi_port = interval_handle->wi_port;

 if (!MACH_PORT_VALID(wi_port)) {
  errno = EINVAL;
  return -1;
 }

 return work_interval_join_port(wi_port);
}
