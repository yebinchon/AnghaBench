
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cond; int * head; scalar_t__ wakens; scalar_t__ waiters; int cs; void* event; void* hot_potato; } ;
typedef TYPE_1__ scond_t ;


 int CloseHandle (void*) ;
 void* CreateEvent (int *,int ,int ,int *) ;
 int FALSE ;
 int InitializeCriticalSection (int *) ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ pthread_cond_init (int *,int *) ;

scond_t *scond_new(void)
{
   scond_t *cond = (scond_t*)calloc(1, sizeof(*cond));

   if (!cond)
      return ((void*)0);
   if (pthread_cond_init(&cond->cond, ((void*)0)) != 0)
      goto error;


   return cond;

error:
   free(cond);
   return ((void*)0);
}
