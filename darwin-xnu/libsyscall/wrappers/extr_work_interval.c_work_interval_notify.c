
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* work_interval_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct work_interval_notification {int create_flags; int notify_flags; int next_start; int deadline; int finish; int start; } ;
typedef int notification ;
struct TYPE_3__ {int work_interval_id; int create_flags; } ;


 int EINVAL ;
 int WORK_INTERVAL_OPERATION_NOTIFY ;
 int __work_interval_ctl (int ,int ,struct work_interval_notification*,int) ;
 int errno ;

int
work_interval_notify(work_interval_t interval_handle, uint64_t start,
                     uint64_t finish, uint64_t deadline, uint64_t next_start,
                     uint32_t notify_flags)
{
 int ret;
 uint64_t work_interval_id;
 struct work_interval_notification notification = {
  .start = start,
  .finish = finish,
  .deadline = deadline,
  .next_start = next_start,
  .notify_flags = notify_flags
 };

 if (interval_handle == ((void*)0)) {
  errno = EINVAL;
  return -1;
 }

 notification.create_flags = interval_handle->create_flags;
 work_interval_id = interval_handle->work_interval_id;

 ret = __work_interval_ctl(WORK_INTERVAL_OPERATION_NOTIFY, work_interval_id,
                           &notification, sizeof(notification));
 return ret;
}
