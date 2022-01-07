
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mtx_t ;
typedef int cnd_t ;


 int INFINITE ;
 int _cnd_timedwait_win32 (int *,int *,int ) ;
 scalar_t__ pthread_cond_wait (int *,int *) ;
 int thrd_error ;
 int thrd_success ;

int cnd_wait(cnd_t *cond, mtx_t *mtx)
{



  return pthread_cond_wait(cond, mtx) == 0 ? thrd_success : thrd_error;

}
