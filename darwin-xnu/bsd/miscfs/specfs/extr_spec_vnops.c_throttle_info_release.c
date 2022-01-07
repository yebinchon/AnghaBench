
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _throttle_io_info_t {int dummy; } ;


 int DEBUG_ALLOC_THROTTLE_INFO (char*,struct _throttle_io_info_t*,struct _throttle_io_info_t*) ;
 int throttle_info_rel (void*) ;

void
throttle_info_release(void *throttle_info)
{
 DEBUG_ALLOC_THROTTLE_INFO("Releaseing info = %p\n",
  (struct _throttle_io_info_t *)throttle_info,
  (struct _throttle_io_info_t *)throttle_info);
 if (throttle_info)
  throttle_info_rel(throttle_info);
}
