
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ptw32_mcs_local_node_t ;
typedef TYPE_1__* pthread_cond_t ;
struct TYPE_7__ {scalar_t__ nWaitersBlocked; scalar_t__ nWaitersGone; struct TYPE_7__* prev; struct TYPE_7__* next; int mtxUnblockLock; int semBlockQueue; int semBlockLock; } ;


 int EBUSY ;
 int EINVAL ;
 TYPE_1__* PTHREAD_COND_INITIALIZER ;
 int errno ;
 int free (TYPE_1__*) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_trylock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__* ptw32_cond_list_head ;
 int ptw32_cond_list_lock ;
 TYPE_1__* ptw32_cond_list_tail ;
 int ptw32_cond_test_init_lock ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 scalar_t__ ptw32_semwait (int *) ;
 scalar_t__ sem_destroy (int *) ;
 scalar_t__ sem_post (int *) ;

int
pthread_cond_destroy (pthread_cond_t * cond)
{
  pthread_cond_t cv;
  int result = 0, result1 = 0, result2 = 0;




  if (cond == ((void*)0) || *cond == ((void*)0))
    {
      return EINVAL;
    }

  if (*cond != PTHREAD_COND_INITIALIZER)
    {
      ptw32_mcs_local_node_t node;
      ptw32_mcs_lock_acquire(&ptw32_cond_list_lock, &node);

      cv = *cond;






      if (ptw32_semwait (&(cv->semBlockLock)) != 0)
 {
   result = errno;
 }
      else
        {





          if ((result = pthread_mutex_trylock (&(cv->mtxUnblockLock))) != 0)
     {
       (void) sem_post (&(cv->semBlockLock));
     }
 }

      if (result != 0)
        {
          ptw32_mcs_lock_release(&node);
          return result;
        }




      if (cv->nWaitersBlocked > cv->nWaitersGone)
 {
   if (sem_post (&(cv->semBlockLock)) != 0)
     {
       result = errno;
     }
   result1 = pthread_mutex_unlock (&(cv->mtxUnblockLock));
   result2 = EBUSY;
 }
      else
 {



   *cond = ((void*)0);

   if (sem_destroy (&(cv->semBlockLock)) != 0)
     {
       result = errno;
     }
   if (sem_destroy (&(cv->semBlockQueue)) != 0)
     {
       result1 = errno;
     }
   if ((result2 = pthread_mutex_unlock (&(cv->mtxUnblockLock))) == 0)
     {
       result2 = pthread_mutex_destroy (&(cv->mtxUnblockLock));
     }



   if (ptw32_cond_list_head == cv)
     {
       ptw32_cond_list_head = cv->next;
     }
   else
     {
       cv->prev->next = cv->next;
     }

   if (ptw32_cond_list_tail == cv)
     {
       ptw32_cond_list_tail = cv->prev;
     }
   else
     {
       cv->next->prev = cv->prev;
     }

   (void) free (cv);
 }

      ptw32_mcs_lock_release(&node);
    }
  else
    {
      ptw32_mcs_local_node_t node;



      ptw32_mcs_lock_acquire(&ptw32_cond_test_init_lock, &node);




      if (*cond == PTHREAD_COND_INITIALIZER)
 {






   *cond = ((void*)0);
 }
      else
 {




   result = EBUSY;
 }

      ptw32_mcs_lock_release(&node);
    }

  return ((result != 0) ? result : ((result1 != 0) ? result1 : result2));
}
