
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kqueue {int dummy; } ;
struct TYPE_4__ {int si_note; } ;
struct kqfile {TYPE_2__ kqf_sel; struct kqueue kqf_kqueue; } ;
struct knote {TYPE_1__* kn_fp; } ;
struct TYPE_3__ {scalar_t__ f_data; } ;


 int KNOTE_DETACH (int *,struct knote*) ;
 int kqlock (struct kqueue*) ;
 int kqunlock (struct kqueue*) ;

__attribute__((used)) static void
filt_kqdetach(struct knote *kn)
{
 struct kqfile *kqf = (struct kqfile *)kn->kn_fp->f_data;
 struct kqueue *kq = &kqf->kqf_kqueue;

 kqlock(kq);
 KNOTE_DETACH(&kqf->kqf_sel.si_note, kn);
 kqunlock(kq);
}
