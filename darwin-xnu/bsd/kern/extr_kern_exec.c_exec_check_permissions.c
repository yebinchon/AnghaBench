
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ user_size_t ;
struct vnode_attr {int va_mode; scalar_t__ va_data_size; } ;
struct vnode {scalar_t__ v_writecount; TYPE_1__* v_mount; } ;
struct image_params {scalar_t__ ip_arch_size; int ip_flags; int ip_vfs_context; scalar_t__ ip_arch_offset; struct vnode_attr* ip_vattr; struct vnode* ip_vp; } ;
typedef TYPE_2__* proc_t ;
typedef int kauth_action_t ;
struct TYPE_5__ {int p_lflag; } ;
struct TYPE_4__ {int mnt_flag; } ;


 int EACCES ;
 int ENOEXEC ;
 int ETXTBSY ;
 int IMGPF_ALLOW_DATA_EXEC ;
 int IMGPF_DISABLE_ASLR ;
 int KAUTH_VNODE_EXECUTE ;
 int KAUTH_VNODE_READ_DATA ;
 int MNT_NOSUID ;
 int P_LTRACED ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 int VSGID ;
 int VSUID ;
 int mac_vnode_check_exec (int ,struct vnode*,struct image_params*) ;
 int panic (char*,struct vnode*) ;
 int va_data_size ;
 int va_fileid ;
 int va_fsid ;
 int va_fsid64 ;
 int va_gid ;
 int va_mode ;
 int va_uid ;
 int vfs_authopaque (int ) ;
 TYPE_2__* vfs_context_proc (int ) ;
 int vnode_authorize (struct vnode*,int *,int ,int ) ;
 int vnode_getattr (struct vnode*,struct vnode_attr*,int ) ;
 int vnode_isreg (struct vnode*) ;
 int vnode_lock (struct vnode*) ;
 int vnode_mount (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

__attribute__((used)) static int
exec_check_permissions(struct image_params *imgp)
{
 struct vnode *vp = imgp->ip_vp;
 struct vnode_attr *vap = imgp->ip_vattr;
 proc_t p = vfs_context_proc(imgp->ip_vfs_context);
 int error;
 kauth_action_t action;


 if (!vnode_isreg(vp))
  return (EACCES);


 VATTR_INIT(vap);
 VATTR_WANTED(vap, va_uid);
 VATTR_WANTED(vap, va_gid);
 VATTR_WANTED(vap, va_mode);
 VATTR_WANTED(vap, va_fsid);
 VATTR_WANTED(vap, va_fsid64);
 VATTR_WANTED(vap, va_fileid);
 VATTR_WANTED(vap, va_data_size);
 if ((error = vnode_getattr(vp, vap, imgp->ip_vfs_context)) != 0)
  return (error);






 if (!vfs_authopaque(vnode_mount(vp)) && ((vap->va_mode & (S_IXUSR | S_IXGRP | S_IXOTH)) == 0))
  return (EACCES);


 if (vap->va_data_size == 0)
  return (ENOEXEC);

 imgp->ip_arch_offset = (user_size_t)0;
 imgp->ip_arch_size = vap->va_data_size;


 if ((vp->v_mount->mnt_flag & MNT_NOSUID) || (p->p_lflag & P_LTRACED))
  vap->va_mode &= ~(VSUID | VSGID);





 if (vap->va_mode & (VSUID | VSGID))
  imgp->ip_flags &= ~(IMGPF_ALLOW_DATA_EXEC | IMGPF_DISABLE_ASLR);
  action = KAUTH_VNODE_EXECUTE;

  if (p->p_lflag & P_LTRACED)
   action |= KAUTH_VNODE_READ_DATA;
  if ((error = vnode_authorize(vp, ((void*)0), action, imgp->ip_vfs_context)) != 0)
  return (error);
 return (error);
}
