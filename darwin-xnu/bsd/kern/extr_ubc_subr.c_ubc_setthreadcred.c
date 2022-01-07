
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct vnode {struct ubc_info* v_ubcinfo; } ;
struct uthread {int uu_flag; int uu_ucred; } ;
struct ubc_info {int ui_ucred; } ;
typedef int proc_t ;
typedef int kauth_cred_t ;


 int IS_VALID_CRED (int ) ;
 int UBCINFOEXISTS (struct vnode*) ;
 int UT_SETUID ;
 struct uthread* get_bsdthread_info (int ) ;
 int kauth_cred_proc_ref (int ) ;
 int kauth_cred_ref (int ) ;
 int vnode_lock (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

int
ubc_setthreadcred(struct vnode *vp, proc_t p, thread_t thread)
{
 struct ubc_info *uip;
 kauth_cred_t credp;
 struct uthread *uthread = get_bsdthread_info(thread);

 if (!UBCINFOEXISTS(vp))
  return (1);

 vnode_lock(vp);

 uip = vp->v_ubcinfo;
 credp = uip->ui_ucred;

 if (!IS_VALID_CRED(credp)) {

  if (uthread == ((void*)0) || (uthread->uu_flag & UT_SETUID) == 0) {
   uip->ui_ucred = kauth_cred_proc_ref(p);
  } else {
   uip->ui_ucred = uthread->uu_ucred;
   kauth_cred_ref(uip->ui_ucred);
  }
 }
 vnode_unlock(vp);

 return (0);
}
