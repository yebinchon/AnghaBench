
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ x; } ;
struct TYPE_10__ {scalar_t__ detachState; void* exitStatus; int threadH; TYPE_1__ ptHandle; } ;
typedef TYPE_2__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
struct TYPE_11__ {scalar_t__ x; int * p; } ;
typedef TYPE_3__ pthread_t ;


 int EDEADLK ;
 int EINVAL ;
 int ENOENT ;
 int ESRCH ;
 scalar_t__ PTHREAD_CREATE_DETACHED ;
 int pthreadCancelableWait (int ) ;
 int pthread_detach (TYPE_3__) ;
 scalar_t__ pthread_equal (TYPE_3__,TYPE_3__) ;
 TYPE_3__ pthread_self () ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_thread_reuse_lock ;

int
pthread_join (pthread_t thread, void **value_ptr)
{
  int result;
  pthread_t self;
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
      result = 0;
    }

  ptw32_mcs_lock_release(&node);

  if (result == 0)
    {



      self = pthread_self();

      if (((void*)0) == self.p)
 {
   result = ENOENT;
 }
      else if (pthread_equal (self, thread))
 {
   result = EDEADLK;
 }
      else
 {







   result = pthreadCancelableWait (tp->threadH);

   if (0 == result)
     {
       if (value_ptr != ((void*)0))
  {
    *value_ptr = tp->exitStatus;
  }






       result = pthread_detach (thread);
     }
   else
     {
       result = ESRCH;
     }
 }
    }

  return (result);

}
