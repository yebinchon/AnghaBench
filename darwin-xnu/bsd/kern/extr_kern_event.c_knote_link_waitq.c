
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct waitq {int dummy; } ;
struct kqueue {int kq_wqs; } ;
struct knote {int dummy; } ;
typedef scalar_t__ kern_return_t ;


 int EINVAL ;
 scalar_t__ KERN_SUCCESS ;
 int WAITQ_ALREADY_LOCKED ;
 struct kqueue* knote_get_kq (struct knote*) ;
 int knote_markstayactive (struct knote*) ;
 scalar_t__ waitq_link (struct waitq*,int *,int ,int *) ;

int
knote_link_waitq(struct knote *kn, struct waitq *wq, uint64_t *reserved_link)
{
 struct kqueue *kq = knote_get_kq(kn);
 kern_return_t kr;

 kr = waitq_link(wq, &kq->kq_wqs, WAITQ_ALREADY_LOCKED, reserved_link);
 if (kr == KERN_SUCCESS) {
  knote_markstayactive(kn);
  return (0);
 } else {
  return (EINVAL);
 }
}
