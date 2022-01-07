
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef unsigned short uid_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int ni_vp; } ;
typedef int name ;
typedef unsigned short gid_t ;
struct TYPE_3__ {int * dn_clone; } ;
typedef TYPE_1__ devnode_t ;
struct TYPE_4__ {char* de_name; TYPE_1__* de_dnp; } ;
typedef TYPE_2__ devdirent_t ;


 unsigned short ALLPERMS ;
 int CAST_USER_ADDR_T (char*) ;
 int EACCES ;
 int ERESTART ;
 int FOLLOW ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int ,int ,int ,int ) ;
 int OP_SETATTR ;
 int UIO_SYSSPACE ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET (struct vnode_attr*,int ,unsigned short) ;
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;
 int snprintf (char*,int,char*,char*) ;
 int va_gid ;
 int va_mode ;
 int va_uid ;
 int vfs_context_current () ;
 int vnode_put (int ) ;
 int vnode_setattr (int ,struct vnode_attr*,int ) ;

__attribute__((used)) static int
_devfs_setattr(void * handle, unsigned short mode, uid_t uid, gid_t gid)
{
 devdirent_t *direntp = (devdirent_t *)handle;
 devnode_t *devnodep;
 int error = EACCES;
 vfs_context_t ctx = vfs_context_current();;
 struct vnode_attr va;

 VATTR_INIT(&va);
 VATTR_SET(&va, va_uid, uid);
 VATTR_SET(&va, va_gid, gid);
 VATTR_SET(&va, va_mode, mode & ALLPERMS);







 if (direntp == ((void*)0) || (devnodep = direntp->de_dnp) == ((void*)0)) {
  error = ERESTART;
  goto out;
 }
 if (devnodep->dn_clone == ((void*)0)) {
  struct nameidata nd;
  char name[128];

  snprintf(name, sizeof(name), "/dev/%s", direntp->de_name);
  NDINIT(&nd, LOOKUP, OP_SETATTR, FOLLOW, UIO_SYSSPACE, CAST_USER_ADDR_T(name), ctx);
  error = namei(&nd);
  if (error)
   goto out;
  error = vnode_setattr(nd.ni_vp, &va, ctx);
  vnode_put(nd.ni_vp);
  nameidone(&nd);
  goto out;
 }

out:
 return(error);
}
