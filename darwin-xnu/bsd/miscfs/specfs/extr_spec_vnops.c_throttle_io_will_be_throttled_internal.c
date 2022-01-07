
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct _throttle_io_info_t {scalar_t__ throttle_io_count; scalar_t__ throttle_io_count_begin; int * throttle_window_start_timestamp; scalar_t__* throttle_inflight_count; } ;


 int THROTTLE_DISENGAGED ;
 int THROTTLE_ENGAGED ;
 int THROTTLE_LEVEL_START ;
 int THROTTLE_LEVEL_THROTTLED ;
 int THROTTLE_NOW ;
 int microuptime (struct timeval*) ;
 int throttle_get_thread_throttle_level (int *) ;
 scalar_t__* throttle_windows_msecs ;
 int timevalsub (struct timeval*,int *) ;

__attribute__((used)) static int
throttle_io_will_be_throttled_internal(void * throttle_info, int * mylevel, int * throttling_level)
{
     struct _throttle_io_info_t *info = throttle_info;
 struct timeval elapsed;
 struct timeval now;
 uint64_t elapsed_msecs;
 int thread_throttle_level;
 int throttle_level;

 if ((thread_throttle_level = throttle_get_thread_throttle_level(((void*)0))) < THROTTLE_LEVEL_THROTTLED)
  return (THROTTLE_DISENGAGED);

 microuptime(&now);

 for (throttle_level = THROTTLE_LEVEL_START; throttle_level < thread_throttle_level; throttle_level++) {
  if (info->throttle_inflight_count[throttle_level]) {
   break;
  }
  elapsed = now;
  timevalsub(&elapsed, &info->throttle_window_start_timestamp[throttle_level]);
  elapsed_msecs = (uint64_t)elapsed.tv_sec * (uint64_t)1000 + (elapsed.tv_usec / 1000);

  if (elapsed_msecs < (uint64_t)throttle_windows_msecs[thread_throttle_level])
   break;
 }
 if (throttle_level >= thread_throttle_level) {





  return (THROTTLE_DISENGAGED);
 }
 if (mylevel)
  *mylevel = thread_throttle_level;
 if (throttling_level)
  *throttling_level = throttle_level;

 if (info->throttle_io_count != info->throttle_io_count_begin) {




  return (THROTTLE_NOW);
 }




 return (THROTTLE_ENGAGED);
}
