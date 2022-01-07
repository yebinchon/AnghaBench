
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ x; scalar_t__ p; } ;
struct TYPE_8__ {struct TYPE_8__* prevReuse; int state; TYPE_2__ ptHandle; } ;
typedef TYPE_1__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
typedef TYPE_2__ pthread_t ;


 scalar_t__ PTW32_THREAD_ID_REUSE_INCREMENT ;
 TYPE_1__* PTW32_THREAD_REUSE_EMPTY ;
 int PThreadStateReuse ;
 int memset (TYPE_1__*,int ,int) ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 TYPE_1__* ptw32_threadReuseBottom ;
 TYPE_1__* ptw32_threadReuseTop ;
 int ptw32_thread_reuse_lock ;

void
ptw32_threadReusePush (pthread_t thread)
{
  ptw32_thread_t * tp = (ptw32_thread_t *) thread.p;
  pthread_t t;
  ptw32_mcs_local_node_t node;

  ptw32_mcs_lock_acquire(&ptw32_thread_reuse_lock, &node);

  t = tp->ptHandle;
  memset(tp, 0, sizeof(ptw32_thread_t));


  tp->ptHandle = t;





  tp->ptHandle.x++;


  tp->state = PThreadStateReuse;

  tp->prevReuse = PTW32_THREAD_REUSE_EMPTY;

  if (PTW32_THREAD_REUSE_EMPTY != ptw32_threadReuseBottom)
    {
      ptw32_threadReuseBottom->prevReuse = tp;
    }
  else
    {
      ptw32_threadReuseTop = tp;
    }

  ptw32_threadReuseBottom = tp;

  ptw32_mcs_lock_release(&node);
}
