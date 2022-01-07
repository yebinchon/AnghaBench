
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* pthread_condattr_t ;
typedef TYPE_2__* pthread_cond_t ;
struct TYPE_9__ {struct TYPE_9__* next; struct TYPE_9__* prev; int semBlockLock; int semBlockQueue; int mtxUnblockLock; scalar_t__ nWaitersGone; scalar_t__ nWaitersToUnblock; scalar_t__ nWaitersBlocked; } ;
struct TYPE_8__ {scalar_t__ pshared; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 scalar_t__ PTHREAD_PROCESS_SHARED ;
 scalar_t__ calloc (int,int) ;
 int errno ;
 int free (TYPE_2__*) ;
 TYPE_2__* pte_cond_list_head ;
 int pte_cond_list_lock ;
 TYPE_2__* pte_cond_list_tail ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pthread_mutex_init (int *,int ) ;
 int sem_destroy (int *) ;
 scalar_t__ sem_init (int *,int ,int) ;

int pthread_cond_init (pthread_cond_t * cond, const pthread_condattr_t * attr)
{
   int result;
   pthread_cond_t cv = ((void*)0);

   if (cond == ((void*)0))
      return EINVAL;

   if ((attr != ((void*)0) && *attr != ((void*)0)) &&
         ((*attr)->pshared == PTHREAD_PROCESS_SHARED))
   {




      result = ENOSYS;
      goto DONE;
   }

   cv = (pthread_cond_t) calloc (1, sizeof (*cv));

   if (cv == ((void*)0))
   {
      result = ENOMEM;
      goto DONE;
   }

   cv->nWaitersBlocked = 0;
   cv->nWaitersToUnblock = 0;
   cv->nWaitersGone = 0;

   if (sem_init (&(cv->semBlockLock), 0, 1) != 0)
   {
      result = errno;
      goto FAIL0;
   }

   if (sem_init (&(cv->semBlockQueue), 0, 0) != 0)
   {
      result = errno;
      goto FAIL1;
   }

   if ((result = pthread_mutex_init (&(cv->mtxUnblockLock), 0)) != 0)
   {
      goto FAIL2;
   }

   result = 0;

   goto DONE;






FAIL2:
   (void) sem_destroy (&(cv->semBlockQueue));

FAIL1:
   (void) sem_destroy (&(cv->semBlockLock));

FAIL0:
   (void) free (cv);
   cv = ((void*)0);

DONE:
   if (0 == result)
   {

      pte_osMutexLock (pte_cond_list_lock);

      cv->next = ((void*)0);
      cv->prev = pte_cond_list_tail;

      if (pte_cond_list_tail != ((void*)0))
         pte_cond_list_tail->next = cv;

      pte_cond_list_tail = cv;

      if (pte_cond_list_head == ((void*)0))
         pte_cond_list_head = cv;

      pte_osMutexUnlock(pte_cond_list_lock);
   }

   *cond = cv;

   return result;
}
