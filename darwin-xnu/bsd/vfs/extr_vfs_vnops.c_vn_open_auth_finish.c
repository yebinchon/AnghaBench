
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vnode_t ;
typedef int vfs_context_t ;


 int KAUTH_FILEOP_OPEN ;
 int kauth_authorize_fileop (int ,int ,uintptr_t,int ) ;
 int mac_vnode_notify_open (int ,scalar_t__,int) ;
 int vfs_context_ucred (int ) ;
 int vnode_ref_ext (scalar_t__,int,int ) ;

__attribute__((used)) static int
vn_open_auth_finish(vnode_t vp, int fmode, vfs_context_t ctx)
{
 int error;

 if ((error = vnode_ref_ext(vp, fmode, 0)) != 0) {
  goto bad;
 }







 kauth_authorize_fileop(vfs_context_ucred(ctx), KAUTH_FILEOP_OPEN,
         (uintptr_t)vp, 0);

 return 0;

bad:
 return error;

}
