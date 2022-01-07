
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int MAX_TIMEBASE_TRIES ;
 int OSCompareAndSwap64 (scalar_t__,scalar_t__,scalar_t__ volatile*) ;
 int OSSynchronizeIO () ;
 scalar_t__ __improbable (int) ;
 int absolute_time_validation ;
 scalar_t__ ml_get_timebase () ;
 int panic (char*,scalar_t__,scalar_t__) ;

uint64_t
mach_absolute_time(void)
{
 return ml_get_timebase();

}
