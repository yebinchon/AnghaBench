
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int useconds_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef long DWORD ;


 int Sleep (long) ;
 int TIME_UTC ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int usleep (int) ;

int thrd_sleep(const struct timespec *time_point, struct timespec *remaining)
{
  struct timespec now;



  long delta;



  if (clock_gettime(TIME_UTC, &now) != 0)
    return -2;
  delta = (time_point->tv_sec - now.tv_sec) * 1000000L +
          (time_point->tv_nsec - now.tv_nsec + 500L) / 1000L;


  while (delta > 999999L)
  {
    usleep(999999);
    delta -= 999999L;
  }
  if (delta > 0L)
  {
    usleep((useconds_t)delta);
  }



  if (remaining)
  {
    remaining->tv_sec = 0;
    remaining->tv_nsec = 0;
  }
  return 0;
}
