
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; int tv_sec; } ;
typedef int clock_sec_t ;
typedef int clock_nsec_t ;


 int clock_get_system_nanotime (int *,int *) ;

void
nanouptime(
 struct timespec *tsp)
{
 clock_sec_t tv_sec;
 clock_nsec_t tv_nsec;

 clock_get_system_nanotime(&tv_sec, &tv_nsec);

 tsp->tv_sec = tv_sec;
 tsp->tv_nsec = tv_nsec;
}
