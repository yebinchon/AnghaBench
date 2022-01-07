
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef int user_addr_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_SYMLINK_NOFOLLOW ;
 int AUDITVNPATH1 ;
 int FOLLOW ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int,int,int ,int ) ;
 int NOFOLLOW ;
 int OP_SETATTR ;
 int chmod_vnode (int ,int ,struct vnode_attr*) ;
 int nameiat (struct nameidata*,int) ;
 int nameidone (struct nameidata*) ;
 int vnode_put (int ) ;

__attribute__((used)) static int
chmodat(vfs_context_t ctx, user_addr_t path, struct vnode_attr *vap,
    int fd, int flag, enum uio_seg segflg)
{
 struct nameidata nd;
 int follow, error;

 follow = (flag & AT_SYMLINK_NOFOLLOW) ? NOFOLLOW : FOLLOW;
 NDINIT(&nd, LOOKUP, OP_SETATTR, follow | AUDITVNPATH1,
     segflg, path, ctx);
 if ((error = nameiat(&nd, fd)))
  return (error);
 error = chmod_vnode(ctx, nd.ni_vp, vap);
 vnode_put(nd.ni_vp);
 nameidone(&nd);
 return(error);
}
