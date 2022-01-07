
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* work_interval_t ;
typedef int uint32_t ;
struct work_interval_create_params {int wicp_port; int wicp_create_flags; int wicp_id; } ;
typedef int create_params ;
struct TYPE_4__ {int wi_port; int create_flags; int work_interval_id; int thread_id; } ;


 int EINVAL ;
 int ENOMEM ;
 int WORK_INTERVAL_OPERATION_CREATE2 ;
 int __thread_selfid () ;
 int __work_interval_ctl (int ,int ,struct work_interval_create_params*,int) ;
 int errno ;
 TYPE_1__* malloc (int) ;

int
work_interval_create(work_interval_t *interval_handle, uint32_t create_flags)
{
 int ret;
 work_interval_t handle;

 if (interval_handle == ((void*)0)) {
  errno = EINVAL;
  return -1;
 }

 struct work_interval_create_params create_params = {
  .wicp_create_flags = create_flags,
 };

 ret = __work_interval_ctl(WORK_INTERVAL_OPERATION_CREATE2, 0,
                           &create_params, sizeof(create_params));
 if (ret == -1) {
  return ret;
 }

 handle = malloc(sizeof(*handle));
 if (handle == ((void*)0)) {
  errno = ENOMEM;
  return -1;
 }

 handle->thread_id = __thread_selfid();
 handle->work_interval_id = create_params.wicp_id;
 handle->create_flags = create_params.wicp_create_flags;
 handle->wi_port = create_params.wicp_port;

 *interval_handle = handle;
 return 0;
}
