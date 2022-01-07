
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct turnstile {int dummy; } ;
struct TYPE_9__ {TYPE_2__* p_mqueue; } ;
struct knote {int kn_status; int kn_flags; TYPE_1__ kn_ptr; } ;
typedef int ipc_port_t ;
typedef int ipc_object_t ;
typedef TYPE_2__* ipc_mqueue_t ;
struct TYPE_10__ {int imq_wait_queue; int imq_klist; } ;


 int EV_EOF ;
 int IMQ_KLIST_VALID (TYPE_2__*) ;
 TYPE_2__* IMQ_NULL ;
 scalar_t__ IOT_PORT ;
 scalar_t__ IOT_PORT_SET ;
 int KNOTE_DETACH (int *,struct knote*) ;
 int KN_VANISHED ;
 int TURNSTILE_IMMEDIATE_UPDATE ;
 int TURNSTILE_INHERITOR_TURNSTILE ;
 int TURNSTILE_INTERLOCK_NOT_HELD ;
 struct turnstile* TURNSTILE_NULL ;
 int assert (int ) ;
 int filt_machport_turnstile_complete (struct knote*) ;
 int imq_lock (TYPE_2__*) ;
 int imq_unlock (TYPE_2__*) ;
 scalar_t__ io_otype (int ) ;
 int io_release (int ) ;
 int ip_from_mq (TYPE_2__*) ;
 int ipc_port_get_inheritor (int ) ;
 int knote_unlink_waitq (struct knote*,int *) ;
 int mqueue_to_object (TYPE_2__*) ;
 struct turnstile* port_send_turnstile (int ) ;
 int turnstile_deallocate (struct turnstile*) ;
 int turnstile_reference (struct turnstile*) ;
 int turnstile_update_inheritor (struct turnstile*,int ,int) ;
 int turnstile_update_inheritor_complete (struct turnstile*,int ) ;

__attribute__((used)) static void
filt_machportdetach(
 struct knote *kn)
{
 ipc_mqueue_t mqueue = kn->kn_ptr.p_mqueue;
 ipc_object_t object = mqueue_to_object(mqueue);
 struct turnstile *send_turnstile = TURNSTILE_NULL;

 filt_machport_turnstile_complete(kn);

 imq_lock(mqueue);
 if ((kn->kn_status & KN_VANISHED) || (kn->kn_flags & EV_EOF)) {



 } else {
  assert(IMQ_KLIST_VALID(mqueue));
  KNOTE_DETACH(&mqueue->imq_klist, kn);
 }

 if (io_otype(object) == IOT_PORT) {
  ipc_port_t port = ip_from_mq(mqueue);

  send_turnstile = port_send_turnstile(port);
  if (send_turnstile) {
   turnstile_reference(send_turnstile);
   turnstile_update_inheritor(send_turnstile,
    ipc_port_get_inheritor(port),
    TURNSTILE_INHERITOR_TURNSTILE | TURNSTILE_IMMEDIATE_UPDATE);
  }
 }


 kn->kn_ptr.p_mqueue = IMQ_NULL;
 imq_unlock(mqueue);

 if (send_turnstile) {
  turnstile_update_inheritor_complete(send_turnstile,
    TURNSTILE_INTERLOCK_NOT_HELD);
  turnstile_deallocate(send_turnstile);
 }

 if (io_otype(object) == IOT_PORT_SET) {




  (void)knote_unlink_waitq(kn, &mqueue->imq_wait_queue);
 }
 io_release(object);
}
