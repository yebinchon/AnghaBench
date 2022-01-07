
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_qos_t ;
struct kqueue {int dummy; } ;
struct knote {int kn_status; } ;


 int KN_ACTIVE ;
 int knote_apply_qos_override (struct knote*,int ) ;
 int knote_dequeue (struct knote*) ;
 scalar_t__ knote_enqueue (struct knote*) ;
 scalar_t__ knote_should_apply_qos_override (struct kqueue*,struct knote*,int,int *) ;
 int knote_wakeup (struct knote*) ;

__attribute__((used)) static void
knote_adjust_qos(struct kqueue *kq, struct knote *kn, int result)
{
 thread_qos_t qos;
 if (knote_should_apply_qos_override(kq, kn, result, &qos)) {
  knote_dequeue(kn);
  knote_apply_qos_override(kn, qos);
  if (knote_enqueue(kn) && (kn->kn_status & KN_ACTIVE)) {
   knote_wakeup(kn);
  }
 }
}
