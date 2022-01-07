
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clock_usec_t ;
typedef int clock_sec_t ;


 int clock_get_calendar_absolute_and_microtime (int *,int *,int *) ;

void
clock_get_calendar_microtime(
 clock_sec_t *secs,
 clock_usec_t *microsecs)
{
 clock_get_calendar_absolute_and_microtime(secs, microsecs, ((void*)0));
}
