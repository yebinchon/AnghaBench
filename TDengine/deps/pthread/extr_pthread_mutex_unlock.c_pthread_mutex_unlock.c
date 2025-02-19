
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pthread_t ;
typedef TYPE_2__* pthread_mutex_t ;
struct TYPE_10__ {int * p; } ;
struct TYPE_9__ {int kind; scalar_t__ recursive_count; int event; int lock_idx; TYPE_1__* robustNode; TYPE_5__ ownerThread; } ;
struct TYPE_8__ {int stateInconsistent; } ;
typedef int PTW32_INTERLOCKED_LONGPTR ;
typedef int PTW32_INTERLOCKED_LONG ;
typedef scalar_t__ LONG ;


 int EINVAL ;
 int EPERM ;
 TYPE_2__* PTHREAD_ERRORCHECK_MUTEX_INITIALIZER ;
 TYPE_2__* PTHREAD_MUTEX_INITIALIZER ;
 int PTHREAD_MUTEX_NORMAL ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG (int ,int ,int ) ;
 scalar_t__ PTW32_INTERLOCKED_EXCHANGE_LONG (int ,int ) ;
 scalar_t__ PTW32_ROBUST_INCONSISTENT ;
 scalar_t__ PTW32_ROBUST_NOTRECOVERABLE ;
 scalar_t__ SetEvent (int ) ;
 scalar_t__ pthread_equal (TYPE_5__,int ) ;
 int pthread_self () ;
 int ptw32_robust_mutex_remove (TYPE_2__**,int *) ;

int
pthread_mutex_unlock (pthread_mutex_t * mutex)
{
  int result = 0;
  int kind;
  pthread_mutex_t mx;





  mx = *mutex;






  if (mx < PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
    {
      kind = mx->kind;

      if (kind >= 0)
        {
          if (kind == PTHREAD_MUTEX_NORMAL)
     {
       LONG idx;

       idx = (LONG) PTW32_INTERLOCKED_EXCHANGE_LONG ((PTW32_INTERLOCKED_LONGPTR)&mx->lock_idx,
           (PTW32_INTERLOCKED_LONG)0);
       if (idx != 0)
         {
           if (idx < 0)
      {



        if (SetEvent (mx->event) == 0)
          {
            result = EINVAL;
          }
      }
         }
     }
          else
     {
       if (pthread_equal (mx->ownerThread, pthread_self()))
         {
           if (kind != PTHREAD_MUTEX_RECURSIVE
        || 0 == --mx->recursive_count)
      {
        mx->ownerThread.p = ((void*)0);

        if ((LONG) PTW32_INTERLOCKED_EXCHANGE_LONG ((PTW32_INTERLOCKED_LONGPTR)&mx->lock_idx,
                 (PTW32_INTERLOCKED_LONG)0) < 0L)
          {

            if (SetEvent (mx->event) == 0)
       {
         result = EINVAL;
       }
          }
      }
         }
       else
         {
           result = EPERM;
         }
     }
        }
      else
        {

          pthread_t self = pthread_self();
          kind = -kind - 1;





          if (pthread_equal (mx->ownerThread, self))
            {
              PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG((PTW32_INTERLOCKED_LONGPTR) &mx->robustNode->stateInconsistent,
                                                      (PTW32_INTERLOCKED_LONG)PTW32_ROBUST_NOTRECOVERABLE,
                                                      (PTW32_INTERLOCKED_LONG)PTW32_ROBUST_INCONSISTENT);
              if (PTHREAD_MUTEX_NORMAL == kind)
                {
                  ptw32_robust_mutex_remove(mutex, ((void*)0));

                  if ((LONG) PTW32_INTERLOCKED_EXCHANGE_LONG((PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
                                                             (PTW32_INTERLOCKED_LONG) 0) < 0)
                    {



                      if (SetEvent (mx->event) == 0)
                        {
                          result = EINVAL;
                        }
                    }
                }
              else
                {
                  if (kind != PTHREAD_MUTEX_RECURSIVE
                      || 0 == --mx->recursive_count)
                    {
                      ptw32_robust_mutex_remove(mutex, ((void*)0));

                      if ((LONG) PTW32_INTERLOCKED_EXCHANGE_LONG((PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
                                                                 (PTW32_INTERLOCKED_LONG) 0) < 0)
                        {



                          if (SetEvent (mx->event) == 0)
                            {
                              result = EINVAL;
                            }
                        }
                    }
                }
            }
          else
            {
              result = EPERM;
            }
        }
    }
  else if (mx != PTHREAD_MUTEX_INITIALIZER)
    {
      result = EINVAL;
    }

  return (result);
}
