
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _throttle_io_info_t {scalar_t__* throttle_inflight_count; int * throttle_window_start_timestamp; } ;


 int OSDecrementAtomic (scalar_t__*) ;
 int THROTTLE_LEVEL_NONE ;
 int assert (int) ;
 int microuptime (int *) ;

__attribute__((used)) static
void throttle_info_end_io_internal(struct _throttle_io_info_t *info, int throttle_level) {
 if (throttle_level == THROTTLE_LEVEL_NONE) {
  return;
 }

 microuptime(&info->throttle_window_start_timestamp[throttle_level]);
 OSDecrementAtomic(&info->throttle_inflight_count[throttle_level]);
 assert(info->throttle_inflight_count[throttle_level] >= 0);
}
