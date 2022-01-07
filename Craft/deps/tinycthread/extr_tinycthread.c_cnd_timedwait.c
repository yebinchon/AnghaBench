
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
typedef int mtx_t ;
typedef int cnd_t ;
typedef int DWORD ;


 int ETIMEDOUT ;
 int TIME_UTC ;
 int _cnd_timedwait_win32 (int *,int *,int ) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int pthread_cond_timedwait (int *,int *,struct timespec const*) ;
 int thrd_error ;
 int thrd_success ;
 int thrd_timeout ;

int cnd_timedwait(cnd_t *cond, mtx_t *mtx, const struct timespec *ts)
{
  int ret;
  ret = pthread_cond_timedwait(cond, mtx, ts);
  if (ret == ETIMEDOUT)
  {
    return thrd_timeout;
  }
  return ret == 0 ? thrd_success : thrd_error;

}
