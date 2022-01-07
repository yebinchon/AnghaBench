
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;
struct kqueue {int kq_wqs; } ;
struct knote {int dummy; } ;
typedef scalar_t__ kern_return_t ;


 int EINVAL ;
 scalar_t__ KERN_SUCCESS ;
 int knote_clearstayactive (struct knote*) ;
 struct kqueue* knote_get_kq (struct knote*) ;
 scalar_t__ waitq_unlink (struct waitq*,int *) ;

int
knote_unlink_waitq(struct knote *kn, struct waitq *wq)
{
 struct kqueue *kq = knote_get_kq(kn);
 kern_return_t kr;

 kr = waitq_unlink(wq, &kq->kq_wqs);
 knote_clearstayactive(kn);
 return ((kr != KERN_SUCCESS) ? EINVAL : 0);
}
