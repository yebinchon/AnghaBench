
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int thread; } ;
typedef TYPE_1__ sthread_t ;


 int CloseHandle (int ) ;
 int INFINITE ;
 int WaitForSingleObject (int ,int ) ;
 int free (TYPE_1__*) ;
 int pthread_join (int ,int *) ;

void sthread_join(sthread_t *thread)
{
   if (!thread)
      return;




   pthread_join(thread->id, ((void*)0));

   free(thread);
}
