
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dummy; } ;
typedef TYPE_1__ VCOS_THREAD_T ;


 int pthread_exit (void*) ;
 int vcos_free (void*) ;
 TYPE_1__* vcos_thread_current () ;

void vcos_thread_exit(void *arg)
{
   VCOS_THREAD_T *thread = vcos_thread_current();

   if ( thread && thread->dummy )
   {
      vcos_free ( (void*) thread );
      thread = ((void*)0);
   }

   pthread_exit(arg);
}
