
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct ubc_info* v_ubcinfo; } ;
struct ubc_info {int ui_ucred; } ;
typedef int proc_t ;
typedef int kauth_cred_t ;


 int IS_VALID_CRED (int ) ;
 int UBCINFOEXISTS (struct vnode*) ;
 int kauth_cred_proc_ref (int ) ;
 int vnode_lock (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

int
ubc_setcred(struct vnode *vp, proc_t p)
{
 struct ubc_info *uip;
 kauth_cred_t credp;


 if ( !UBCINFOEXISTS(vp))
  return (0);





 vnode_lock(vp);
 uip = vp->v_ubcinfo;
 credp = uip->ui_ucred;
 if (!IS_VALID_CRED(credp)) {
  uip->ui_ucred = kauth_cred_proc_ref(p);
 }
 vnode_unlock(vp);

 return (1);
}
