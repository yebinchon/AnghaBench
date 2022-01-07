
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int mtx_t ;


 int thrd_error ;

int mtx_timedlock(mtx_t *mtx, const struct timespec *ts)
{

  (void)mtx;
  (void)ts;
  return thrd_error;
}
