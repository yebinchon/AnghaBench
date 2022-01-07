
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {struct label* v_label; } ;
struct label {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ,struct vnode*,struct label*,struct label*) ;
 struct label* mac_vnode_label_alloc () ;
 int mac_vnode_label_free (struct label*) ;
 int vfs_context_ucred (int ) ;
 int vnode_label_update ;
 int vnode_lock (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

void
mac_vnode_label_update(vfs_context_t ctx, struct vnode *vp, struct label *newlabel)
{
 kauth_cred_t cred = vfs_context_ucred(ctx);
 struct label *tmpl = ((void*)0);

 if (vp->v_label == ((void*)0))
  tmpl = mac_vnode_label_alloc();

 vnode_lock(vp);


 if (vp->v_label == ((void*)0)) {
  vp->v_label = tmpl;
  tmpl = ((void*)0);
 }

 MAC_PERFORM(vnode_label_update, cred, vp, vp->v_label, newlabel);
 vnode_unlock(vp);

 if (tmpl != ((void*)0))
  mac_vnode_label_free(tmpl);
}
