
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct _throttle_io_info_t {int * throttle_window_start_timestamp; scalar_t__* throttle_inflight_count; } ;





 int THROTTLE_DISENGAGED ;
 int THROTTLE_ENGAGED ;
 int THROTTLE_LEVEL_START ;
 int THROTTLE_LEVEL_TIER0 ;
 int THROTTLE_LEVEL_TIER1 ;
 int THROTTLE_LEVEL_TIER2 ;
 int THROTTLE_LEVEL_TIER3 ;
 int microuptime (struct timeval*) ;
 scalar_t__* throttle_windows_msecs ;
 int timevalsub (struct timeval*,int *) ;

int throttle_info_io_will_be_throttled(void * throttle_info, int policy)
{
     struct _throttle_io_info_t *info = throttle_info;
 struct timeval elapsed;
 uint64_t elapsed_msecs;
 int throttle_level;
 int thread_throttle_level;

        switch (policy) {

        case 129:
                thread_throttle_level = THROTTLE_LEVEL_TIER3;
                break;
        case 128:
                thread_throttle_level = THROTTLE_LEVEL_TIER2;
                break;
        case 130:
                thread_throttle_level = THROTTLE_LEVEL_TIER1;
                break;
        default:
                thread_throttle_level = THROTTLE_LEVEL_TIER0;
  break;
 }
 for (throttle_level = THROTTLE_LEVEL_START; throttle_level < thread_throttle_level; throttle_level++) {
  if (info->throttle_inflight_count[throttle_level]) {
   break;
  }

  microuptime(&elapsed);
  timevalsub(&elapsed, &info->throttle_window_start_timestamp[throttle_level]);
  elapsed_msecs = (uint64_t)elapsed.tv_sec * (uint64_t)1000 + (elapsed.tv_usec / 1000);

  if (elapsed_msecs < (uint64_t)throttle_windows_msecs[thread_throttle_level])
   break;
 }
 if (throttle_level >= thread_throttle_level) {




  return (THROTTLE_DISENGAGED);
 }



 return (THROTTLE_ENGAGED);
}
