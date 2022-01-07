
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int throttle_info_update_internal (void*,int *,int,int ,int ,int *) ;

void throttle_info_update(void *throttle_info, int flags)
{
        if (throttle_info)
  throttle_info_update_internal(throttle_info, ((void*)0), flags, FALSE, FALSE, ((void*)0));
}
