
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
typedef int vfs_context_t ;
typedef TYPE_3__* uthread_t ;
typedef scalar_t__ uint64_t ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
struct tty {int dummy; } ;
struct knote {struct tty* kn_hook; TYPE_2__* kn_fp; } ;
typedef scalar_t__ kern_return_t ;
struct TYPE_7__ {struct waitq_set* uu_wqset; } ;
struct TYPE_6__ {TYPE_1__* f_fglob; } ;
struct TYPE_5__ {scalar_t__ fg_data; } ;


 int ENOTTY ;
 int FMARK ;
 scalar_t__ KERN_SUCCESS ;
 int SYNC_POLICY_FIFO ;
 int SYNC_POLICY_PREPOST ;
 int VNOP_SELECT (scalar_t__,int,int ,scalar_t__*,int ) ;
 int assert (int) ;
 int current_thread () ;
 TYPE_3__* get_bsdthread_info (int ) ;
 int knote_get_seltype (struct knote*) ;
 int knote_set_error (struct knote*,int ) ;
 int memcpy (struct waitq**,scalar_t__*,int) ;
 struct tty* tty_from_waitq (struct waitq*,int) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttyhold (struct tty*) ;
 int vfs_context_current () ;
 int waitq_link_release (scalar_t__) ;
 scalar_t__ waitq_link_reserve (int *) ;
 int waitq_set_deinit (struct waitq_set*) ;
 scalar_t__ waitq_set_init (struct waitq_set*,int,int *,int *) ;
 int waitq_set_lazy_init_link (struct waitq_set*) ;

__attribute__((used)) static int
tty_set_knote_hook(struct knote *kn)
{
 uthread_t uth;
 vfs_context_t ctx;
 vnode_t vp;
 kern_return_t kr;
 struct waitq *wq = ((void*)0);
 struct waitq_set *old_wqs;
 struct waitq_set tmp_wqs;
 uint64_t rsvd, rsvd_arg;
 uint64_t *rlptr = ((void*)0);
 int selres = -1;
 struct tty *tp;

 uth = get_bsdthread_info(current_thread());

 ctx = vfs_context_current();
 vp = (vnode_t)kn->kn_fp->f_fglob->fg_data;





 rsvd = rsvd_arg = waitq_link_reserve(((void*)0));
 rlptr = (void *)&rsvd_arg;
 kr = waitq_set_init(&tmp_wqs, SYNC_POLICY_FIFO | SYNC_POLICY_PREPOST, ((void*)0),
   ((void*)0));
 assert(kr == KERN_SUCCESS);





 waitq_set_lazy_init_link(&tmp_wqs);

 old_wqs = uth->uu_wqset;
 uth->uu_wqset = &tmp_wqs;






 selres = VNOP_SELECT(vp, knote_get_seltype(kn) | FMARK, 0, rlptr, ctx);
 uth->uu_wqset = old_wqs;





 waitq_link_release(rsvd);
 if (rsvd == rsvd_arg) {




  knote_set_error(kn, ENOTTY);
  selres = -1;
  goto out;
 }


 memcpy(&wq, rlptr, sizeof(void *));

 tp = tty_from_waitq(wq, knote_get_seltype(kn));
 assert(tp != ((void*)0));




 tty_lock(tp);
 ttyhold(tp);
 kn->kn_hook = tp;
 tty_unlock(tp);

out:




 waitq_set_deinit(&tmp_wqs);

 return selres;
}
