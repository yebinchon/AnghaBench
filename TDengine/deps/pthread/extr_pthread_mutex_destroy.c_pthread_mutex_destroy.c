
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ptw32_mcs_local_node_t ;
typedef TYPE_1__* pthread_mutex_t ;
struct TYPE_7__ {scalar_t__ kind; int recursive_count; int event; struct TYPE_7__* robustNode; } ;


 int CloseHandle (int ) ;
 int EBUSY ;
 int EINVAL ;
 int ENOTRECOVERABLE ;
 TYPE_1__* PTHREAD_ERRORCHECK_MUTEX_INITIALIZER ;
 scalar_t__ PTHREAD_MUTEX_RECURSIVE ;
 int free (TYPE_1__*) ;
 int pthread_mutex_trylock (TYPE_1__**) ;
 int pthread_mutex_unlock (TYPE_1__**) ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_mutex_test_init_lock ;

int
pthread_mutex_destroy (pthread_mutex_t * mutex)
{
  int result = 0;
  pthread_mutex_t mx;
  if (*mutex < PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
    {
      mx = *mutex;

      result = pthread_mutex_trylock (&mx);





      if (0 == result || ENOTRECOVERABLE == result)
 {
   if (mx->kind != PTHREAD_MUTEX_RECURSIVE || 1 == mx->recursive_count)
     {







       *mutex = ((void*)0);

       result = (0 == result)?pthread_mutex_unlock(&mx):0;

       if (0 == result)
  {
                  if (mx->robustNode != ((void*)0))
                    {
                      free(mx->robustNode);
                    }
    if (!CloseHandle (mx->event))
      {
        *mutex = mx;
        result = EINVAL;
      }
    else
      {
        free (mx);
      }
  }
       else
  {



    *mutex = mx;
  }
     }
   else
     {



       mx->recursive_count--;
       result = EBUSY;
     }
 }
    }
  else
    {
      ptw32_mcs_local_node_t node;





      ptw32_mcs_lock_acquire(&ptw32_mutex_test_init_lock, &node);




      if (*mutex >= PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
 {






   *mutex = ((void*)0);
 }
      else
 {




   result = EBUSY;
 }
      ptw32_mcs_lock_release(&node);
    }

  return (result);
}
