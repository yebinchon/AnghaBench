
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {void (* func ) (void*) ;int id; int thread; void* userdata; } ;
struct sched_param {int sched_priority; } ;
typedef struct thread_data sthread_t ;
typedef int pthread_attr_t ;


 int CreateThread (int *,int ,int ,struct thread_data*,int ,int *) ;
 int SCHED_RR ;
 scalar_t__ calloc (int,int) ;
 int free (struct thread_data*) ;
 int memset (struct sched_param*,int ,int) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setschedparam (int *,struct sched_param*) ;
 int pthread_attr_setschedpolicy (int *,int ) ;
 int pthread_attr_setstacksize (int *,int) ;
 scalar_t__ pthread_create (int *,int *,int ,struct thread_data*) ;
 int thread_wrap ;

sthread_t *sthread_create_with_priority(void (*thread_func)(void*), void *userdata, int thread_priority)
{




   bool thread_created = 0;
   struct thread_data *data = ((void*)0);
   sthread_t *thread = (sthread_t*)calloc(1, sizeof(*thread));

   if (!thread)
      return ((void*)0);

   data = (struct thread_data*)calloc(1, sizeof(*data));
   if (!data)
      goto error;

   data->func = thread_func;
   data->userdata = userdata;
      thread_created = pthread_create(&thread->id, ((void*)0), thread_wrap, data) == 0;






   if (thread_created)
      return thread;

error:
   if (data)
      free(data);
   free(thread);
   return ((void*)0);
}
