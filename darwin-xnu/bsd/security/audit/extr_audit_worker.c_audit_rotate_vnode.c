
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
typedef int * kauth_cred_t ;
struct TYPE_4__ {int * vc_ucred; } ;
struct TYPE_3__ {scalar_t__ aq_hiwater; } ;


 int AUDIT_CLOSE_FLAGS ;
 int AUDIT_WORKER_SX_XLOCK () ;
 int AUDIT_WORKER_SX_XUNLOCK () ;
 int KASSERT (int,char*) ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 TYPE_2__ audit_ctx ;
 int audit_drain_cv ;
 int audit_drain_kar ;
 int audit_enabled ;
 scalar_t__ audit_file_rotate_wait ;
 int audit_mtx ;
 int audit_q ;
 int audit_q_draining ;
 scalar_t__ audit_q_len ;
 TYPE_1__ audit_qctrl ;
 struct vnode* audit_vp ;
 int audit_watermark_cv ;
 int audit_worker_cv ;
 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 int k_q ;
 int kauth_cred_unref (int **) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;
 int vfs_context_kernel () ;
 int vn_close (struct vnode*,int ,int ) ;
 scalar_t__ vnode_get (struct vnode*) ;
 int vnode_put (struct vnode*) ;

void
audit_rotate_vnode(kauth_cred_t cred, struct vnode *vp)
{
 kauth_cred_t old_audit_cred;
 struct vnode *old_audit_vp;

 KASSERT((cred != ((void*)0) && vp != ((void*)0)) || (cred == ((void*)0) && vp == ((void*)0)),
     ("audit_rotate_vnode: cred %p vp %p", cred, vp));


 mtx_lock(&audit_mtx);
 if (audit_enabled && (((void*)0) == vp)) {






  audit_enabled = 0;







  audit_q_draining = 1;
  while (audit_q_len >= audit_qctrl.aq_hiwater)
   cv_wait(&audit_watermark_cv, &audit_mtx);
  TAILQ_INSERT_TAIL(&audit_q, &audit_drain_kar, k_q);
  audit_q_len++;
  cv_signal(&audit_worker_cv);
 }


 while (audit_q_draining)
  cv_wait(&audit_drain_cv, &audit_mtx);
 mtx_unlock(&audit_mtx);






 AUDIT_WORKER_SX_XLOCK();
 old_audit_cred = audit_ctx.vc_ucred;
 old_audit_vp = audit_vp;
 audit_ctx.vc_ucred = cred;
 audit_vp = vp;
 audit_file_rotate_wait = 0;
 audit_enabled = (audit_vp != ((void*)0));
 AUDIT_WORKER_SX_XUNLOCK();




 if (old_audit_vp != ((void*)0)) {
  if (vnode_get(old_audit_vp) == 0) {
   vn_close(old_audit_vp, AUDIT_CLOSE_FLAGS,
       vfs_context_kernel());
   vnode_put(old_audit_vp);
  } else
   printf("audit_rotate_vnode: Couldn't close "
       "audit file.\n");
  kauth_cred_unref(&old_audit_cred);
 }
}
