
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ waiters; scalar_t__ wakens; int cond; int hot_potato; int cs; int event; } ;
typedef TYPE_1__ scond_t ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int SetEvent (int ) ;
 int pthread_cond_signal (int *) ;

void scond_signal(scond_t *cond)
{
   pthread_cond_signal(&cond->cond);

}
