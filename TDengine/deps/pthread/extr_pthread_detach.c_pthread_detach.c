
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ x; } ;
struct TYPE_7__ {scalar_t__ detachState; scalar_t__ state; int threadH; int stateLock; TYPE_1__ ptHandle; } ;
typedef TYPE_2__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
struct TYPE_8__ {scalar_t__ x; scalar_t__ p; } ;
typedef TYPE_3__ pthread_t ;
typedef scalar_t__ BOOL ;


 int EINVAL ;
 int ESRCH ;
 int INFINITE ;
 scalar_t__ PTHREAD_CREATE_DETACHED ;
 scalar_t__ PTW32_FALSE ;
 scalar_t__ PTW32_TRUE ;
 scalar_t__ PThreadStateLast ;
 int WaitForSingleObject (int ,int ) ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_threadDestroy (TYPE_3__) ;
 int ptw32_thread_reuse_lock ;

int
pthread_detach (pthread_t thread)
{
  int result;
  BOOL destroyIt = PTW32_FALSE;
  ptw32_thread_t * tp = (ptw32_thread_t *) thread.p;
  ptw32_mcs_local_node_t node;

  ptw32_mcs_lock_acquire(&ptw32_thread_reuse_lock, &node);

  if (((void*)0) == tp
      || thread.x != tp->ptHandle.x)
    {
      result = ESRCH;
    }
  else if (PTHREAD_CREATE_DETACHED == tp->detachState)
    {
      result = EINVAL;
    }
  else
    {
      ptw32_mcs_local_node_t stateLock;





      result = 0;

      ptw32_mcs_lock_acquire (&tp->stateLock, &stateLock);
      if (tp->state != PThreadStateLast)
        {
          tp->detachState = PTHREAD_CREATE_DETACHED;
        }
      else if (tp->detachState != PTHREAD_CREATE_DETACHED)
        {



          destroyIt = PTW32_TRUE;
        }
      ptw32_mcs_lock_release (&stateLock);
    }

  ptw32_mcs_lock_release(&node);

  if (result == 0)
    {


      if (destroyIt)
 {



   (void) WaitForSingleObject(tp->threadH, INFINITE);
   ptw32_threadDestroy (thread);
 }
    }

  return (result);

}
