
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
typedef int vfs_context_t ;
typedef TYPE_3__* uthread_t ;
typedef scalar_t__ uint64_t ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
struct selinfo {int dummy; } ;
struct knote {int kn_hook_data; int kn_hookid; TYPE_2__* kn_fp; } ;
struct TYPE_9__ {struct waitq_set kq_wqs; } ;
struct TYPE_8__ {struct waitq_set* uu_wqset; } ;
struct TYPE_7__ {TYPE_1__* f_fglob; } ;
struct TYPE_6__ {scalar_t__ fg_data; } ;


 int ENODEV ;
 int ENOENT ;
 int VNOP_SELECT (scalar_t__,int ,int ,scalar_t__*,int ) ;
 int current_thread () ;
 TYPE_3__* get_bsdthread_info (int ) ;
 TYPE_4__* knote_get_kq (struct knote*) ;
 int knote_get_seltype (struct knote*) ;
 int knote_set_error (struct knote*,int ) ;
 int memcpy (struct waitq**,scalar_t__*,int) ;
 struct selinfo* selinfo_from_waitq (struct waitq*) ;
 int vfs_context_current () ;
 int vnode_getwithvid (scalar_t__,int ) ;
 int vnode_put (scalar_t__) ;
 int waitq_get_prepost_id (struct waitq*) ;
 int waitq_link_release (scalar_t__) ;
 scalar_t__ waitq_link_reserve (int *) ;
 int waitq_set_lazy_init_link (struct waitq_set*) ;

__attribute__((used)) static int
spec_knote_select_and_link(struct knote *kn)
{
 uthread_t uth;
 vfs_context_t ctx;
 vnode_t vp;
 struct waitq_set *old_wqs;
 uint64_t rsvd, rsvd_arg;
 uint64_t *rlptr = ((void*)0);
 struct selinfo *si = ((void*)0);
 int selres = 0;

 uth = get_bsdthread_info(current_thread());

 ctx = vfs_context_current();
 vp = (vnode_t)kn->kn_fp->f_fglob->fg_data;

 int error = vnode_getwithvid(vp, kn->kn_hookid);
 if (error != 0) {
  knote_set_error(kn, ENOENT);
  return 0;
 }
 rsvd = rsvd_arg = waitq_link_reserve(((void*)0));
 rlptr = (void *)&rsvd_arg;





 old_wqs = uth->uu_wqset;
 uth->uu_wqset = &(knote_get_kq(kn)->kq_wqs);






 waitq_set_lazy_init_link(uth->uu_wqset);
 selres = VNOP_SELECT(vp, knote_get_seltype(kn), 0, rlptr, ctx);
 uth->uu_wqset = old_wqs;





 waitq_link_release(rsvd);
 if (rsvd != rsvd_arg) {

  struct waitq *wq;
  memcpy(&wq, rlptr, sizeof(void *));







  si = selinfo_from_waitq(wq);
  kn->kn_hook_data = waitq_get_prepost_id(wq);
 } else if (selres == 0) {






  knote_set_error(kn, ENODEV);
 }

 vnode_put(vp);

 return selres;
}
