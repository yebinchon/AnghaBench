
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_mqueue; } ;
struct knote {int kn_sfflags; int * kn_ext; TYPE_1__ kn_ptr; } ;
struct kevent_internal_s {int fflags; int flags; int * ext; } ;
typedef TYPE_2__* ipc_mqueue_t ;
typedef int ipc_kmsg_t ;
struct TYPE_8__ {int imq_messages; } ;


 int EV_ENABLE ;
 int FILTER_ACTIVE ;
 int FILTER_RESET_EVENT_QOS ;
 int IKM_NULL ;
 int MACH_RCV_MSG ;
 int filt_machport_adjust_qos (struct knote*,int ) ;
 int filt_machport_turnstile_complete (struct knote*) ;
 int imq_is_set (TYPE_2__*) ;
 scalar_t__ imq_is_valid (TYPE_2__*) ;
 int imq_lock (TYPE_2__*) ;
 int imq_unlock (TYPE_2__*) ;
 int ipc_kmsg_queue_first (int *) ;

__attribute__((used)) static int
filt_machporttouch(
 struct knote *kn,
 struct kevent_internal_s *kev)
{
 ipc_mqueue_t mqueue = kn->kn_ptr.p_mqueue;
 ipc_kmsg_t first;
 int result = 0;


 kn->kn_sfflags = kev->fflags;
 kn->kn_ext[0] = kev->ext[0];
 kn->kn_ext[1] = kev->ext[1];

 if (kev->flags & EV_ENABLE) {




  filt_machport_turnstile_complete(kn);
 }
 imq_lock(mqueue);
 if (imq_is_valid(mqueue) && !imq_is_set(mqueue) &&
     (first = ipc_kmsg_queue_first(&mqueue->imq_messages)) != IKM_NULL) {
  result = FILTER_ACTIVE | filt_machport_adjust_qos(kn, first);
 } else if (kn->kn_sfflags & MACH_RCV_MSG) {
  result = FILTER_RESET_EVENT_QOS;
 }
 imq_unlock(mqueue);

 return result;
}
