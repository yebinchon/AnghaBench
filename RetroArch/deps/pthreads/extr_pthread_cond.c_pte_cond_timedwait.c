
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timespec {int dummy; } ;
typedef int pthread_mutex_t ;
typedef TYPE_1__* pthread_cond_t ;
struct TYPE_7__ {int* resultPtr; TYPE_1__* cv; int * mutexPtr; } ;
typedef TYPE_2__ pte_cond_wait_cleanup_args_t ;
struct TYPE_6__ {int semBlockQueue; int semBlockLock; int nWaitersBlocked; } ;


 int EBUSY ;
 int EINVAL ;
 TYPE_1__* PTHREAD_COND_INITIALIZER ;
 int errno ;
 int pte_cond_check_need_init (TYPE_1__**) ;
 int pte_cond_wait_cleanup ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,void*) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ sem_post (int *) ;
 scalar_t__ sem_timedwait (int *,struct timespec const*) ;
 scalar_t__ sem_wait (int *) ;

__attribute__((used)) static int pte_cond_timedwait (pthread_cond_t * cond,
      pthread_mutex_t * mutex, const struct timespec *abstime)
{
   int result = 0;
   pthread_cond_t cv;
   pte_cond_wait_cleanup_args_t cleanup_args;

   if (cond == ((void*)0) || *cond == ((void*)0))
      return EINVAL;







   if (*cond == PTHREAD_COND_INITIALIZER)
      result = pte_cond_check_need_init (cond);

   if (result != 0 && result != EBUSY)
      return result;

   cv = *cond;


   if (sem_wait (&(cv->semBlockLock)) != 0)
      return errno;

   ++(cv->nWaitersBlocked);

   if (sem_post (&(cv->semBlockLock)) != 0)
      return errno;




   cleanup_args.mutexPtr = mutex;
   cleanup_args.cv = cv;
   cleanup_args.resultPtr = &result;

   pthread_cleanup_push (pte_cond_wait_cleanup, (void *) &cleanup_args);




   if ((result = pthread_mutex_unlock (mutex)) == 0)
   {
      if (sem_timedwait (&(cv->semBlockQueue), abstime) != 0)
         result = errno;
   }





   pthread_cleanup_pop (1);




   return result;
}
