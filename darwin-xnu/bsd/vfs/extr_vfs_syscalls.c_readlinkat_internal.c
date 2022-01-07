
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef int user_addr_t ;
typedef int uio_t ;
typedef int uio_buf ;
struct nameidata {TYPE_1__* ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_6__ {scalar_t__ v_type; } ;


 int AUDITVNPATH1 ;
 int EINVAL ;
 int KAUTH_VNODE_READ_DATA ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int,int,int ,int ) ;
 int NOFOLLOW ;
 int OP_READLINK ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 scalar_t__ VLNK ;
 int VNOP_READLINK (TYPE_1__*,int ,int ) ;
 int mac_vnode_check_readlink (int ,TYPE_1__*) ;
 int nameiat (struct nameidata*,int) ;
 int nameidone (struct nameidata*) ;
 int uio_addiov (int ,int ,size_t) ;
 int uio_createwithbuffer (int,int ,int,int ,char*,int) ;
 scalar_t__ uio_resid (int ) ;
 int vnode_authorize (TYPE_1__*,int *,int ,int ) ;
 int vnode_put (TYPE_1__*) ;

__attribute__((used)) static int
readlinkat_internal(vfs_context_t ctx, int fd, user_addr_t path,
    enum uio_seg seg, user_addr_t buf, size_t bufsize, enum uio_seg bufseg,
    int *retval)
{
 vnode_t vp;
 uio_t auio;
 int error;
 struct nameidata nd;
 char uio_buf[ UIO_SIZEOF(1) ];

 NDINIT(&nd, LOOKUP, OP_READLINK, NOFOLLOW | AUDITVNPATH1,
     seg, path, ctx);

 error = nameiat(&nd, fd);
 if (error)
  return (error);
 vp = nd.ni_vp;

 nameidone(&nd);

 auio = uio_createwithbuffer(1, 0, bufseg, UIO_READ,
                                    &uio_buf[0], sizeof(uio_buf));
 uio_addiov(auio, buf, bufsize);
 if (vp->v_type != VLNK) {
  error = EINVAL;
 } else {



  if (error == 0)
   error = vnode_authorize(vp, ((void*)0), KAUTH_VNODE_READ_DATA,
                           ctx);
  if (error == 0)
   error = VNOP_READLINK(vp, auio, ctx);
 }
 vnode_put(vp);

 *retval = bufsize - (int)uio_resid(auio);
 return (error);
}
