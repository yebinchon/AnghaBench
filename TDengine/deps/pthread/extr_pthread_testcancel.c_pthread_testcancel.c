
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; scalar_t__ cancelState; int cancelEvent; int stateLock; } ;
typedef TYPE_1__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
struct TYPE_5__ {scalar_t__ p; } ;
typedef TYPE_2__ pthread_t ;


 scalar_t__ PTHREAD_CANCEL_DISABLE ;
 int PTW32_EPS_CANCEL ;
 scalar_t__ PThreadStateCancelPending ;
 scalar_t__ PThreadStateCanceling ;
 int ResetEvent (int ) ;
 TYPE_2__ pthread_self () ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_throw (int ) ;

void
pthread_testcancel (void)
{
  ptw32_mcs_local_node_t stateLock;
  pthread_t self = pthread_self ();
  ptw32_thread_t * sp = (ptw32_thread_t *) self.p;

  if (sp == ((void*)0))
    {
      return;
    }






  if (sp->state != PThreadStateCancelPending)
    {
      return;
    }

  ptw32_mcs_lock_acquire (&sp->stateLock, &stateLock);

  if (sp->cancelState != PTHREAD_CANCEL_DISABLE)
    {
      ResetEvent(sp->cancelEvent);
      sp->state = PThreadStateCanceling;
      sp->cancelState = PTHREAD_CANCEL_DISABLE;
      ptw32_mcs_lock_release (&stateLock);
      ptw32_throw (PTW32_EPS_CANCEL);

    }

  ptw32_mcs_lock_release (&stateLock);
}
