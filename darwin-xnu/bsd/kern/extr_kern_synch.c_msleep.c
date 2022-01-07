
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int64_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef int lck_mtx_t ;
typedef int caddr_t ;


 int NSEC_PER_SEC ;
 int _sleep (int ,int,char const*,int ,int (*) (int),int *) ;
 int clock_absolutetime_interval_to_deadline (int ,int *) ;
 int nanoseconds_to_absolutetime (scalar_t__,int *) ;

int
msleep(
 void *chan,
 lck_mtx_t *mtx,
 int pri,
 const char *wmsg,
 struct timespec *ts)
{
 u_int64_t abstime = 0;

 if (ts && (ts->tv_sec || ts->tv_nsec)) {
  nanoseconds_to_absolutetime((uint64_t)ts->tv_sec * NSEC_PER_SEC + ts->tv_nsec, &abstime );
  clock_absolutetime_interval_to_deadline( abstime, &abstime );
 }

 return _sleep((caddr_t)chan, pri, wmsg, abstime, (int (*)(int))0, mtx);
}
