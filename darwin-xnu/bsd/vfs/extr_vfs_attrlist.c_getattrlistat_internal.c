
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int user_addr_t ;
typedef int uint64_t ;
struct nameidata {int ni_vp; } ;
struct attrlist {int dummy; } ;
typedef int int32_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AUDITVNPATH1 ;
 int FOLLOW ;
 int FSOPT_NOFOLLOW ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int ,int,int ,int ) ;
 int NOCRED ;
 int OP_GETATTR ;
 int getattrlist_internal (int ,int ,struct attrlist*,int ,size_t,int,int,int *,int ) ;
 int nameiat (struct nameidata*,int) ;
 int nameidone (struct nameidata*) ;
 int vnode_put (int ) ;

__attribute__((used)) static int
getattrlistat_internal(vfs_context_t ctx, user_addr_t path,
    struct attrlist *alp, user_addr_t attributeBuffer, size_t bufferSize,
    uint64_t options, enum uio_seg segflg, enum uio_seg pathsegflg, int fd)
{
 struct nameidata nd;
 vnode_t vp;
 int32_t nameiflags;
 int error;

 nameiflags = 0;



 if (!(options & FSOPT_NOFOLLOW))
  nameiflags |= FOLLOW;

 nameiflags |= AUDITVNPATH1;
 NDINIT(&nd, LOOKUP, OP_GETATTR, nameiflags, pathsegflg,
     path, ctx);

 error = nameiat(&nd, fd);

 if (error)
  return (error);

 vp = nd.ni_vp;

 error = getattrlist_internal(ctx, vp, alp, attributeBuffer,
     bufferSize, options, segflg, ((void*)0), NOCRED);


 nameidone(&nd);
 vnode_put(vp);
 return (error);
}
