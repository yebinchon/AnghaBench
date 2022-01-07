
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ clock_usec_t ;
typedef int clock_sec_t ;


 int USEC_PER_SEC ;
 int clock_get_boottime_microtime (int*,scalar_t__*) ;
 int commpage_update_boottime (scalar_t__) ;

__attribute__((used)) static void
commpage_boottime_init(void)
{
 clock_sec_t secs;
 clock_usec_t microsecs;
 clock_get_boottime_microtime(&secs, &microsecs);
 commpage_update_boottime(secs * USEC_PER_SEC + microsecs);
}
