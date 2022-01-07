
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct turnstile {int ts_waitq; } ;
typedef scalar_t__ mach_port_msgcount_t ;
typedef TYPE_1__* ipc_mqueue_t ;
struct TYPE_6__ {scalar_t__ imq_qlimit; int imq_msgcount; int imq_fullwaiters; } ;


 int FALSE ;
 int IPC_MQUEUE_FULL ;
 scalar_t__ KERN_NOT_WAITING ;
 scalar_t__ MACH_PORT_QLIMIT_MAX ;
 int THREAD_AWAKENED ;
 struct turnstile* TURNSTILE_NULL ;
 int WAITQ_PROMOTE_PRIORITY ;
 int assert (int) ;
 int imq_lock (TYPE_1__*) ;
 int imq_unlock (TYPE_1__*) ;
 int ip_from_mq (TYPE_1__*) ;
 struct turnstile* port_send_turnstile (int ) ;
 scalar_t__ waitq_wakeup64_one (int *,int ,int ,int ) ;

void
ipc_mqueue_set_qlimit(
  ipc_mqueue_t mqueue,
  mach_port_msgcount_t qlimit)
{

  assert(qlimit <= MACH_PORT_QLIMIT_MAX);


  imq_lock(mqueue);
  if (qlimit > mqueue->imq_qlimit) {
   mach_port_msgcount_t i, wakeup;
   struct turnstile *send_turnstile = port_send_turnstile(ip_from_mq(mqueue));


   wakeup = qlimit - mqueue->imq_qlimit;

   for (i = 0; i < wakeup; i++) {







   if (send_turnstile == TURNSTILE_NULL ||
       waitq_wakeup64_one(&send_turnstile->ts_waitq,
            IPC_MQUEUE_FULL,
            THREAD_AWAKENED,
            WAITQ_PROMOTE_PRIORITY) == KERN_NOT_WAITING) {
    mqueue->imq_fullwaiters = FALSE;
    break;
   }
   mqueue->imq_msgcount++;
   }
 }
 mqueue->imq_qlimit = qlimit;
 imq_unlock(mqueue);
}
