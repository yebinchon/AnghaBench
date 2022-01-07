
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ptw32_robust_state_t ;
typedef void* pthread_t ;
typedef TYPE_2__* pthread_mutex_t ;
struct TYPE_9__ {int kind; int recursive_count; int event; int lock_idx; void* ownerThread; TYPE_1__* robustNode; } ;
struct TYPE_8__ {int stateInconsistent; } ;
typedef int PTW32_INTERLOCKED_LONGPTR ;
typedef scalar_t__ PTW32_INTERLOCKED_LONG ;


 int EDEADLK ;
 int EINVAL ;
 int ENOTRECOVERABLE ;
 int EOWNERDEAD ;
 int INFINITE ;
 TYPE_2__* PTHREAD_ERRORCHECK_MUTEX_INITIALIZER ;
 int PTHREAD_MUTEX_NORMAL ;
 int PTHREAD_MUTEX_RECURSIVE ;
 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG (int ,scalar_t__,scalar_t__) ;
 scalar_t__ PTW32_INTERLOCKED_EXCHANGE_ADD_LONG (int ,scalar_t__) ;
 scalar_t__ PTW32_INTERLOCKED_EXCHANGE_LONG (int ,scalar_t__) ;
 scalar_t__ PTW32_ROBUST_NOTRECOVERABLE ;
 int SetEvent (int ) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 scalar_t__ pthread_equal (void*,void*) ;
 void* pthread_self () ;
 int ptw32_mutex_check_need_init (TYPE_2__**) ;
 int ptw32_robust_mutex_add (TYPE_2__**,void*) ;
 int ptw32_robust_mutex_inherit (TYPE_2__**) ;

int
pthread_mutex_lock (pthread_mutex_t * mutex)
{
  int kind;
  pthread_mutex_t mx;
  int result = 0;




  if (*mutex == ((void*)0))
    {
      return EINVAL;
    }







  if (*mutex >= PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
    {
      if ((result = ptw32_mutex_check_need_init (mutex)) != 0)
 {
   return (result);
 }
    }

  mx = *mutex;
  kind = mx->kind;

  if (kind >= 0)
    {

      if (PTHREAD_MUTEX_NORMAL == kind)
        {
          if ((PTW32_INTERLOCKED_LONG) PTW32_INTERLOCKED_EXCHANGE_LONG(
         (PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
         (PTW32_INTERLOCKED_LONG) 1) != 0)
     {
       while ((PTW32_INTERLOCKED_LONG) PTW32_INTERLOCKED_EXCHANGE_LONG(
                              (PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
         (PTW32_INTERLOCKED_LONG) -1) != 0)
         {
           if (WAIT_OBJECT_0 != WaitForSingleObject (mx->event, INFINITE))
             {
               result = EINVAL;
        break;
             }
         }
     }
        }
      else
        {
          pthread_t self = pthread_self();

          if ((PTW32_INTERLOCKED_LONG) PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(
                       (PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
         (PTW32_INTERLOCKED_LONG) 1,
         (PTW32_INTERLOCKED_LONG) 0) == 0)
     {
       mx->recursive_count = 1;
       mx->ownerThread = self;
     }
          else
     {
       if (pthread_equal (mx->ownerThread, self))
         {
           if (kind == PTHREAD_MUTEX_RECURSIVE)
      {
        mx->recursive_count++;
      }
           else
      {
        result = EDEADLK;
      }
         }
       else
         {
           while ((PTW32_INTERLOCKED_LONG) PTW32_INTERLOCKED_EXCHANGE_LONG(
                                  (PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
             (PTW32_INTERLOCKED_LONG) -1) != 0)
      {
               if (WAIT_OBJECT_0 != WaitForSingleObject (mx->event, INFINITE))
          {
                   result = EINVAL;
            break;
          }
      }

           if (0 == result)
      {
        mx->recursive_count = 1;
        mx->ownerThread = self;
      }
         }
     }
        }
    }
  else
    {





      ptw32_robust_state_t* statePtr = &mx->robustNode->stateInconsistent;

      if ((PTW32_INTERLOCKED_LONG)PTW32_ROBUST_NOTRECOVERABLE == PTW32_INTERLOCKED_EXCHANGE_ADD_LONG(
                                                 (PTW32_INTERLOCKED_LONGPTR)statePtr,
                                                 (PTW32_INTERLOCKED_LONG)0))
        {
          result = ENOTRECOVERABLE;
        }
      else
        {
          pthread_t self = pthread_self();

          kind = -kind - 1;

          if (PTHREAD_MUTEX_NORMAL == kind)
            {
              if ((PTW32_INTERLOCKED_LONG) PTW32_INTERLOCKED_EXCHANGE_LONG(
                           (PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
                           (PTW32_INTERLOCKED_LONG) 1) != 0)
                {
                  while (0 == (result = ptw32_robust_mutex_inherit(mutex))
                           && (PTW32_INTERLOCKED_LONG) PTW32_INTERLOCKED_EXCHANGE_LONG(
                                       (PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
                                       (PTW32_INTERLOCKED_LONG) -1) != 0)
                    {
                      if (WAIT_OBJECT_0 != WaitForSingleObject (mx->event, INFINITE))
                        {
                          result = EINVAL;
                          break;
                        }
                      if ((PTW32_INTERLOCKED_LONG)PTW32_ROBUST_NOTRECOVERABLE ==
                                  PTW32_INTERLOCKED_EXCHANGE_ADD_LONG(
                                    (PTW32_INTERLOCKED_LONGPTR)statePtr,
                                    (PTW32_INTERLOCKED_LONG)0))
                        {

                          SetEvent(mx->event);
                          result = ENOTRECOVERABLE;
                          break;
                        }
                    }
                }
              if (0 == result || EOWNERDEAD == result)
                {




                  ptw32_robust_mutex_add(mutex, self);
                }
            }
          else
            {
              if ((PTW32_INTERLOCKED_LONG) PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(
                           (PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
                           (PTW32_INTERLOCKED_LONG) 1,
                           (PTW32_INTERLOCKED_LONG) 0) == 0)
                {
                  mx->recursive_count = 1;




                  ptw32_robust_mutex_add(mutex, self);
                }
              else
                {
                  if (pthread_equal (mx->ownerThread, self))
                    {
                      if (PTHREAD_MUTEX_RECURSIVE == kind)
                        {
                          mx->recursive_count++;
                        }
                      else
                        {
                          result = EDEADLK;
                        }
                    }
                  else
                    {
                      while (0 == (result = ptw32_robust_mutex_inherit(mutex))
                               && (PTW32_INTERLOCKED_LONG) PTW32_INTERLOCKED_EXCHANGE_LONG(
                                           (PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
                                           (PTW32_INTERLOCKED_LONG) -1) != 0)
                        {
                          if (WAIT_OBJECT_0 != WaitForSingleObject (mx->event, INFINITE))
                            {
                              result = EINVAL;
                              break;
                            }
                          if ((PTW32_INTERLOCKED_LONG)PTW32_ROBUST_NOTRECOVERABLE ==
                                      PTW32_INTERLOCKED_EXCHANGE_ADD_LONG(
                                        (PTW32_INTERLOCKED_LONGPTR)statePtr,
                                        (PTW32_INTERLOCKED_LONG)0))
                            {

                              SetEvent(mx->event);
                              result = ENOTRECOVERABLE;
                              break;
                            }
                        }

                      if (0 == result || EOWNERDEAD == result)
                        {
                          mx->recursive_count = 1;




                          ptw32_robust_mutex_add(mutex, self);
                        }
                    }
         }
            }
        }
    }

  return (result);
}
