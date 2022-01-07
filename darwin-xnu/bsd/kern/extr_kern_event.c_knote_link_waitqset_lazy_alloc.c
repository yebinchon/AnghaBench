
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqueue {int kq_wqs; } ;
struct knote {int dummy; } ;


 struct kqueue* knote_get_kq (struct knote*) ;
 int waitq_set_lazy_init_link (int *) ;

void
knote_link_waitqset_lazy_alloc(struct knote *kn)
{
 struct kqueue *kq = knote_get_kq(kn);
 waitq_set_lazy_init_link(&kq->kq_wqs);
}
