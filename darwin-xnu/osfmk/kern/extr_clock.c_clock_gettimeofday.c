
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clock_usec_t ;
typedef int clock_sec_t ;


 int clock_gettimeofday_and_absolute_time (int *,int *,int *) ;

void
clock_gettimeofday(
 clock_sec_t *secs,
 clock_usec_t *microsecs)
{
 clock_gettimeofday_and_absolute_time(secs, microsecs, ((void*)0));
}
