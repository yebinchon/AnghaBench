
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cancelState; scalar_t__ cancelType; int cancelEvent; int state; int stateLock; } ;
typedef TYPE_1__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
struct TYPE_5__ {scalar_t__ p; } ;
typedef TYPE_2__ pthread_t ;


 int EINVAL ;
 scalar_t__ PTHREAD_CANCEL_ASYNCHRONOUS ;
 int PTHREAD_CANCEL_DISABLE ;
 int PTHREAD_CANCEL_ENABLE ;
 int PTW32_EPS_CANCEL ;
 int PThreadStateCanceling ;
 int ResetEvent (int ) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 TYPE_2__ pthread_self () ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_throw (int ) ;

int
pthread_setcancelstate (int state, int *oldstate)
{
  ptw32_mcs_local_node_t stateLock;
  int result = 0;
  pthread_t self = pthread_self ();
  ptw32_thread_t * sp = (ptw32_thread_t *) self.p;

  if (sp == ((void*)0)
      || (state != PTHREAD_CANCEL_ENABLE && state != PTHREAD_CANCEL_DISABLE))
    {
      return EINVAL;
    }




  ptw32_mcs_lock_acquire (&sp->stateLock, &stateLock);

  if (oldstate != ((void*)0))
    {
      *oldstate = sp->cancelState;
    }

  sp->cancelState = state;




  if (state == PTHREAD_CANCEL_ENABLE
      && sp->cancelType == PTHREAD_CANCEL_ASYNCHRONOUS
      && WaitForSingleObject (sp->cancelEvent, 0) == WAIT_OBJECT_0)
    {
      sp->state = PThreadStateCanceling;
      sp->cancelState = PTHREAD_CANCEL_DISABLE;
      ResetEvent (sp->cancelEvent);
      ptw32_mcs_lock_release (&stateLock);
      ptw32_throw (PTW32_EPS_CANCEL);


    }

  ptw32_mcs_lock_release (&stateLock);

  return (result);

}
