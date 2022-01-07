
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int boolean_t ;


 int FALSE ;
 int OSCompareAndSwap64 (scalar_t__,scalar_t__,scalar_t__*) ;
 int TRUE ;
 scalar_t__ global_logical_writes_count ;
 scalar_t__ io_telemetry_limit ;

__attribute__((used)) static boolean_t
global_update_logical_writes(int64_t io_delta)
{
 int64_t old_count, new_count;
 boolean_t needs_telemetry;

 do {
  new_count = old_count = global_logical_writes_count;
  new_count += io_delta;
  if (new_count >= io_telemetry_limit) {
   new_count = 0;
   needs_telemetry = TRUE;
  } else {
   needs_telemetry = FALSE;
  }
 } while(!OSCompareAndSwap64(old_count, new_count, &global_logical_writes_count));
 return needs_telemetry;
}
