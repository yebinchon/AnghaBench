
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int tailPtr; } ;
typedef TYPE_3__ ptw32_srwl_rwlock_t ;
struct TYPE_10__ {TYPE_2__* wNodePtr; } ;
typedef TYPE_4__ ptw32_srwl_local_t ;
struct TYPE_8__ {TYPE_1__* qNextPtr; } ;
struct TYPE_7__ {int spin; } ;
typedef int PTW32_INTERLOCKED_PVOIDPTR ;
typedef scalar_t__ PTW32_INTERLOCKED_PVOID ;


 int PTW32_FALSE ;
 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR (int ,scalar_t__,scalar_t__) ;

void
ptw32_srwl_WriterUnlock(ptw32_srwl_rwlock_t* lockPtr, ptw32_srwl_local_t* localPtr)
{
  if (localPtr->wNodePtr->qNextPtr == ((void*)0))
  {
    if (PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR(
              (PTW32_INTERLOCKED_PVOIDPTR)&lockPtr->tailPtr,
              (PTW32_INTERLOCKED_PVOID)((void*)0),
              (PTW32_INTERLOCKED_PVOID)localPtr->wNodePtr)
        == (PTW32_INTERLOCKED_PVOID)((void*)0))
    {
      return;
    }
    else
    {
      while (localPtr->wNodePtr->qNextPtr == ((void*)0));
    }
  }

  localPtr->wNodePtr->qNextPtr->spin = PTW32_FALSE;
  localPtr->wNodePtr->qNextPtr = ((void*)0);
}
