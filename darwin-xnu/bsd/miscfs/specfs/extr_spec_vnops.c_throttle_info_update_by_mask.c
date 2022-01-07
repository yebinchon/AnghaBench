
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int throttle_info_update (void*,int) ;

void throttle_info_update_by_mask(void *throttle_info_handle, int flags)
{
 void *throttle_info = throttle_info_handle;







 throttle_info_update(throttle_info, flags);
}
