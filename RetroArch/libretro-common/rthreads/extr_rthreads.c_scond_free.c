
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cond; int cs; int hot_potato; int event; } ;
typedef TYPE_1__ scond_t ;


 int CloseHandle (int ) ;
 int DeleteCriticalSection (int *) ;
 int free (TYPE_1__*) ;
 int pthread_cond_destroy (int *) ;

void scond_free(scond_t *cond)
{
   if (!cond)
      return;






   pthread_cond_destroy(&cond->cond);

   free(cond);
}
