
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* pthread_mutex_t ;
struct TYPE_5__ {scalar_t__ kind; TYPE_1__* robustNode; } ;
struct TYPE_4__ {int stateInconsistent; } ;
typedef int PTW32_INTERLOCKED_LONGPTR ;
typedef scalar_t__ PTW32_INTERLOCKED_LONG ;


 int EINVAL ;
 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG (int ,scalar_t__,scalar_t__) ;
 scalar_t__ PTW32_ROBUST_CONSISTENT ;
 scalar_t__ PTW32_ROBUST_INCONSISTENT ;

int
pthread_mutex_consistent (pthread_mutex_t* mutex)
{
  pthread_mutex_t mx = *mutex;
  int result = 0;




  if (mx == ((void*)0))
    {
      return EINVAL;
    }

  if (mx->kind >= 0
        || (PTW32_INTERLOCKED_LONG)PTW32_ROBUST_INCONSISTENT != PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(
                                                (PTW32_INTERLOCKED_LONGPTR)&mx->robustNode->stateInconsistent,
                                                (PTW32_INTERLOCKED_LONG)PTW32_ROBUST_CONSISTENT,
                                                (PTW32_INTERLOCKED_LONG)PTW32_ROBUST_INCONSISTENT))
    {
      result = EINVAL;
    }

  return (result);
}
