
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kqueue {int kq_count; } ;
struct knote {int kn_data; TYPE_1__* kn_fp; } ;
struct kevent_internal_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ f_data; } ;


 int kqlock (struct kqueue*) ;
 int kqunlock (struct kqueue*) ;

__attribute__((used)) static int
filt_kqtouch(struct knote *kn, struct kevent_internal_s *kev)
{
#pragma unused(kev)
 struct kqueue *kq = (struct kqueue *)kn->kn_fp->f_data;
 int res;

 kqlock(kq);
 kn->kn_data = kq->kq_count;
 res = (kn->kn_data > 0);

 kqunlock(kq);

 return res;
}
