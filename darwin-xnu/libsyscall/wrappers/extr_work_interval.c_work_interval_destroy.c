
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* work_interval_t ;
typedef scalar_t__ uint64_t ;
typedef int mach_port_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_4__ {int create_flags; scalar_t__ work_interval_id; int wi_port; } ;


 int EINVAL ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_NULL ;
 int WORK_INTERVAL_FLAG_JOINABLE ;
 int WORK_INTERVAL_OPERATION_DESTROY ;
 int __work_interval_ctl (int ,scalar_t__,int *,int ) ;
 int errno ;
 int free (TYPE_1__*) ;
 scalar_t__ mach_port_deallocate (int ,int ) ;
 int mach_task_self () ;

int
work_interval_destroy(work_interval_t interval_handle)
{
 if (interval_handle == ((void*)0)) {
  errno = EINVAL;
  return -1;
 }

 if (interval_handle->create_flags & WORK_INTERVAL_FLAG_JOINABLE) {
  mach_port_t wi_port = interval_handle->wi_port;
  kern_return_t kr = mach_port_deallocate(mach_task_self(), wi_port);

  if (kr != KERN_SUCCESS) {







   errno = EINVAL;
   return -1;
  }

  interval_handle->wi_port = MACH_PORT_NULL;
  interval_handle->work_interval_id = 0;

  free(interval_handle);
  return 0;
 } else {
  uint64_t work_interval_id = interval_handle->work_interval_id;

  int ret = __work_interval_ctl(WORK_INTERVAL_OPERATION_DESTROY,
                                work_interval_id, ((void*)0), 0);

  interval_handle->work_interval_id = 0;

  int saved_errno = errno;
  free(interval_handle);
  errno = saved_errno;
  return ret;
 }
}
