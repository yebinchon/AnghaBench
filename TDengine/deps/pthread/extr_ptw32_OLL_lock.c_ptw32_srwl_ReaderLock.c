
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* tailPtr; } ;
typedef TYPE_1__ ptw32_srwl_rwlock_t ;
struct TYPE_10__ {scalar_t__ kind; scalar_t__ spin; int csnzi; struct TYPE_10__* qNextPtr; } ;
typedef TYPE_2__ ptw32_srwl_node_t ;
struct TYPE_11__ {TYPE_2__* departFromPtr; void* ticket; } ;
typedef TYPE_3__ ptw32_srwl_local_t ;
typedef int PTW32_INTERLOCKED_PVOIDPTR ;
typedef scalar_t__ PTW32_INTERLOCKED_PVOID ;


 scalar_t__ PTW32_FALSE ;
 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR (int ,scalar_t__,scalar_t__) ;
 scalar_t__ PTW32_TRUE ;
 void* ptw32_oll_Arrive (int ) ;
 scalar_t__ ptw32_oll_Arrived (void*) ;
 int ptw32_oll_Open (int ) ;
 TYPE_2__* ptw32_srwl_AllocReaderNode (TYPE_3__*) ;
 int ptw32_srwl_FreeReaderNode (TYPE_2__*) ;
 scalar_t__ ptw32_srwl_writer ;

void
ptw32_srwl_ReaderLock(ptw32_srwl_rwlock_t* lockPtr, ptw32_srwl_local_t* localPtr)
{
  ptw32_srwl_node_t* rNodePtr = ((void*)0);
  for (;;)
  {
    ptw32_srwl_node_t* tailPtr = lockPtr->tailPtr;

    if (tailPtr == ((void*)0))
    {
      if (rNodePtr == ((void*)0))
      {
        rNodePtr = ptw32_srwl_AllocReaderNode(localPtr);
      }
      rNodePtr->spin = PTW32_FALSE;
      if (PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR(
                (PTW32_INTERLOCKED_PVOIDPTR)&lockPtr->tailPtr,
                (PTW32_INTERLOCKED_PVOID)rNodePtr,
                (PTW32_INTERLOCKED_PVOID)((void*)0))
          == (PTW32_INTERLOCKED_PVOID)rNodePtr)
      {
        ptw32_oll_Open(rNodePtr->csnzi);
        localPtr->ticket = ptw32_oll_Arrive(rNodePtr->csnzi);
        if (ptw32_oll_Arrived(localPtr->ticket))
        {
          localPtr->departFromPtr = rNodePtr;
          return;
        }

        rNodePtr = ((void*)0);
      }
    }

    else
    {

      if (tailPtr->kind == ptw32_srwl_writer)
      {
        if (rNodePtr == ((void*)0))
        {
          rNodePtr = ptw32_srwl_AllocReaderNode(localPtr);
        }
        rNodePtr->spin = PTW32_TRUE;
        if (PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR(
                  (PTW32_INTERLOCKED_PVOIDPTR)&lockPtr->tailPtr,
                  (PTW32_INTERLOCKED_PVOID)rNodePtr,
                  (PTW32_INTERLOCKED_PVOID)tailPtr)
            == (PTW32_INTERLOCKED_PVOID)rNodePtr)
        {
          tailPtr->qNextPtr = rNodePtr;
          localPtr->ticket = ptw32_oll_Arrive(rNodePtr->csnzi);
          if (ptw32_oll_Arrived(localPtr->ticket))
          {
            localPtr->departFromPtr = rNodePtr;
            while (rNodePtr->spin);
            return;
          }

          rNodePtr = ((void*)0);
        }
      }




      else
      {
        localPtr->ticket = ptw32_oll_Arrive(tailPtr->csnzi);
        if (ptw32_oll_Arrived(localPtr->ticket))
        {
          if (rNodePtr != ((void*)0))
          {
            ptw32_srwl_FreeReaderNode(rNodePtr);
          }
          localPtr->departFromPtr = tailPtr;
          while (tailPtr->spin);
          return;
        }
      }
    }
  }
}
