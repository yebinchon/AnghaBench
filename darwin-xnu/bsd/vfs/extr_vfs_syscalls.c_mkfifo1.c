
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vnode_t ;
typedef int vfs_context_t ;
typedef int user_addr_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int ni_cnd; int * ni_vp; int * ni_dvp; } ;


 int AUDITVNPATH1 ;
 int CREATE ;
 int EEXIST ;
 int LOCKPARENT ;
 int NDINIT (struct nameidata*,int ,int ,int,int ,int ,int ) ;
 int OP_MKFIFO ;
 int UIO_USERSPACE ;
 int VATTR_SET (struct vnode_attr*,int ,int ) ;
 int VFIFO ;
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;
 int va_type ;
 int vn_authorize_create (int *,int *,struct vnode_attr*,int ,int *) ;
 int vn_create (int *,int **,struct nameidata*,struct vnode_attr*,int ,int ,int *,int ) ;
 int vnode_put (int *) ;

__attribute__((used)) static int
mkfifo1(vfs_context_t ctx, user_addr_t upath, struct vnode_attr *vap)
{
 vnode_t vp, dvp;
 int error;
 struct nameidata nd;

 NDINIT(&nd, CREATE, OP_MKFIFO, LOCKPARENT | AUDITVNPATH1,
  UIO_USERSPACE, upath, ctx);
 error = namei(&nd);
 if (error)
  return (error);
 dvp = nd.ni_dvp;
 vp = nd.ni_vp;


    if (vp != ((void*)0)) {
     error = EEXIST;
     goto out;
    }
    VATTR_SET(vap, va_type, VFIFO);

 if ((error = vn_authorize_create(dvp, &nd.ni_cnd, vap, ctx, ((void*)0))) != 0)
  goto out;

   error = vn_create(dvp, &vp, &nd, vap, 0, 0, ((void*)0), ctx);
out:




 nameidone(&nd);

 if (vp)
         vnode_put(vp);
 vnode_put(dvp);

 return error;
}
