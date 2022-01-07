
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct TYPE_11__ {int p_flag; int p_acflag; } ;
struct TYPE_10__ {int v_flag; } ;


 int FREAD ;
 int FWRITE ;
 int KAUTH_FILEOP_OPEN ;
 int KAUTH_VNODE_APPEND_DATA ;
 int KAUTH_VNODE_READ_DATA ;
 int KAUTH_VNODE_WRITE_DATA ;
 int O_APPEND ;
 int O_EVTONLY ;
 int O_TRUNC ;
 int P_CHECKOPENEVT ;
 int VNOP_CLOSE (TYPE_1__*,int,int ) ;
 int VNOP_OPEN (TYPE_1__*,int,int ) ;
 int VOPENEVT ;
 TYPE_7__* current_proc () ;
 int kauth_authorize_fileop (int ,int ,uintptr_t,int ) ;
 int kauth_cred_get () ;
 int mac_vnode_check_open (int ,TYPE_1__*,int) ;
 int mac_vnode_notify_open (int ,TYPE_1__*,int) ;
 int suser (int ,int *) ;
 int vfs_context_ucred (int ) ;
 int vnode_authorize (TYPE_1__*,int *,int,int ) ;
 int vnode_ref_ext (TYPE_1__*,int,int ) ;

__attribute__((used)) static int
vn_open_with_vp(vnode_t vp, int fmode, vfs_context_t ctx)
{
 int error, action;

 if ((error = suser(kauth_cred_get(), &(current_proc()->p_acflag)))) {
  return error;
 }
 action = 0;
 if (fmode & FREAD) {
  action |= KAUTH_VNODE_READ_DATA;
 }
 if (fmode & (FWRITE | O_TRUNC)) {






  if ((fmode & O_APPEND) && !(fmode & O_TRUNC)) {
   action |= KAUTH_VNODE_APPEND_DATA;
  } else {
   action |= KAUTH_VNODE_WRITE_DATA;
  }
 }

 if ((error = vnode_authorize(vp, ((void*)0), action, ctx)) != 0)
  return error;
 if ((vp->v_flag & VOPENEVT) && (current_proc()->p_flag & P_CHECKOPENEVT)) {
  fmode |= O_EVTONLY;
 }

 if ( (error = VNOP_OPEN(vp, fmode, ctx)) ) {
  return error;
 }
 if ( (error = vnode_ref_ext(vp, fmode, 0)) ) {
  VNOP_CLOSE(vp, fmode, ctx);
  return error;
 }







 kauth_authorize_fileop(vfs_context_ucred(ctx), KAUTH_FILEOP_OPEN,
          (uintptr_t)vp, 0);


 return 0;
}
