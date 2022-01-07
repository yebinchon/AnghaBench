
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqueue {int kq_state; } ;
struct knote {int kn_qos; } ;
struct kevent_internal_s {int flags; int qos; } ;


 int ERANGE ;
 int EV_DELETE ;
 int EV_DISABLE ;
 int KQ_WORKLOOP ;
 int _pthread_priority_thread_qos (int ) ;

__attribute__((used)) static int
kevent_register_validate_priority(struct kqueue *kq, struct knote *kn,
  struct kevent_internal_s *kev)
{

 if (kev->flags & (EV_DISABLE | EV_DELETE)) {
  return 0;
 }

 if (kq->kq_state & KQ_WORKLOOP) {
  if (!_pthread_priority_thread_qos(kn ? kn->kn_qos : kev->qos)) {
   return ERANGE;
  }
 }

 return 0;
}
