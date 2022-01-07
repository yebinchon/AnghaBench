
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ throttle_info_handle_t ;
struct _throttle_io_info_t {int dummy; } ;


 int throttle_info_rel (struct _throttle_io_info_t*) ;

void
throttle_info_rel_by_mask(throttle_info_handle_t throttle_info_handle)
{



 throttle_info_rel((struct _throttle_io_info_t*)throttle_info_handle);
}
