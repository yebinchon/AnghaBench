
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; } ;
typedef TYPE_1__ sthread_t ;


 scalar_t__ GetCurrentThreadId () ;
 int pthread_equal (int ,scalar_t__) ;
 int pthread_self () ;

bool sthread_isself(sthread_t *thread)
{

  if (!thread)
     return 0;




   return pthread_equal(pthread_self(),thread->id);

}
