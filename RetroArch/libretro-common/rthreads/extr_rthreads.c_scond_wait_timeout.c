
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sys_time_sec_t ;
typedef int sys_time_nsec_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; int member_0; } ;
struct TYPE_9__ {int lock; } ;
typedef TYPE_1__ slock_t ;
struct TYPE_10__ {int cond; } ;
typedef TYPE_2__ scond_t ;
struct TYPE_11__ {int tv_sec; int tv_nsec; } ;
typedef TYPE_3__ mach_timespec_t ;
typedef int int64_t ;
typedef int clock_serv_t ;
typedef int DWORD ;


 int CALENDAR_CLOCK ;
 int CLOCK_REALTIME ;
 int INT64_C (int) ;
 int _ftime64_s (struct timespec*) ;
 int _scond_wait_win32 (TYPE_2__*,TYPE_1__*,int) ;
 int clock () ;
 int clock_get_time (int ,TYPE_3__*) ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;
 int host_get_clock_service (int ,int ,int *) ;
 int mach_host_self () ;
 int mach_port_deallocate (int ,int ) ;
 int mach_task_self () ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int sys_time_get_current_time (int*,int*) ;

bool scond_wait_timeout(scond_t *cond, slock_t *lock, int64_t timeout_us)
{
   int ret;
   int64_t seconds, remainder;
   struct timespec now = {0};
   clock_gettime(CLOCK_REALTIME, &now);


   seconds = timeout_us / INT64_C(1000000);
   remainder = timeout_us % INT64_C(1000000);

   now.tv_sec += seconds;
   now.tv_nsec += remainder * INT64_C(1000);

   if (now.tv_nsec > 1000000000)
   {
      now.tv_nsec -= 1000000000;
      now.tv_sec += 1;
   }

   ret = pthread_cond_timedwait(&cond->cond, &lock->lock, &now);
   return (ret == 0);

}
