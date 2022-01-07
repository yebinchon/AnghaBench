
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thrd_t ;


 int pthread_equal (scalar_t__,scalar_t__) ;

int thrd_equal(thrd_t thr0, thrd_t thr1)
{



  return pthread_equal(thr0, thr1);

}
