
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* vfs_context_t ;
typedef int user_addr_t ;
struct vfs_context {int vc_ucred; int vc_thread; } ;
struct TYPE_11__ {int cn_flags; } ;
struct nameidata {TYPE_3__* ni_dvp; TYPE_3__* ni_vp; TYPE_1__ ni_cnd; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_13__ {scalar_t__ v_parent; } ;
struct TYPE_12__ {int vc_thread; int vc_ucred; } ;


 int AT_EACCESS ;
 int AUDITVNPATH1 ;
 int CN_ALLOWRSRCFORK ;
 int FOLLOW ;
 int F_OK ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int,int,int ,struct vfs_context*) ;
 scalar_t__ NULLVP ;
 int OP_ACCESS ;
 int WANTPARENT ;
 int _DELETE_OK ;
 int access1 (TYPE_3__*,TYPE_3__*,int,struct vfs_context*) ;
 int kauth_cred_copy_real (int ) ;
 int kauth_cred_get () ;
 int kauth_cred_unref (int *) ;
 int nameiat (struct nameidata*,int) ;
 int nameidone (struct nameidata*) ;
 scalar_t__ vnode_isnamedstream (TYPE_3__*) ;
 scalar_t__ vnode_isshadow (TYPE_3__*) ;
 int vnode_put (TYPE_3__*) ;
 int vnode_ref (TYPE_3__*) ;
 int vnode_rele (TYPE_3__*) ;

__attribute__((used)) static int
faccessat_internal(vfs_context_t ctx, int fd, user_addr_t path, int amode,
    int flag, enum uio_seg segflg)
{
 int error;
 struct nameidata nd;
  int niopts;
 struct vfs_context context;
 if (!(flag & AT_EACCESS))
  context.vc_ucred = kauth_cred_copy_real(kauth_cred_get());
 else
  context.vc_ucred = ctx->vc_ucred;
 context.vc_thread = ctx->vc_thread;


 niopts = FOLLOW | AUDITVNPATH1;

  if (amode & _DELETE_OK)
   niopts |= WANTPARENT;
  NDINIT(&nd, LOOKUP, OP_ACCESS, niopts, segflg,
        path, &context);






  error = nameiat(&nd, fd);
  if (error)
   goto out;
 error = access1(nd.ni_vp, nd.ni_dvp, amode, &context);







  vnode_put(nd.ni_vp);
 if (amode & _DELETE_OK)
   vnode_put(nd.ni_dvp);
   nameidone(&nd);

out:
 if (!(flag & AT_EACCESS))
  kauth_cred_unref(&context.vc_ucred);
 return (error);
}
