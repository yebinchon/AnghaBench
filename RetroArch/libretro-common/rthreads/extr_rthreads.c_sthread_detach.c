
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int thread; } ;
typedef TYPE_1__ sthread_t ;


 int CloseHandle (int ) ;
 int free (TYPE_1__*) ;
 int pthread_detach (int ) ;

int sthread_detach(sthread_t *thread)
{





   return pthread_detach(thread->id);

}
