
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef struct vnode* vnode_t ;
typedef int vfs_context_t ;
typedef scalar_t__ user_ssize_t ;
typedef int * uio_t ;
typedef int uio_buf ;
typedef scalar_t__ uint32_t ;
typedef int u_long ;
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct getdirentriesattr_args {int fd; int basep; int newstate; int count; scalar_t__ buffersize; scalar_t__ options; int buffer; int alist; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
struct attrlist {int commonattr; scalar_t__ dirattr; scalar_t__ fileattr; } ;
typedef int proc_t ;
typedef int newstate ;
typedef int loff ;
typedef int kauth_action_t ;
typedef int int32_t ;
typedef int count ;
typedef scalar_t__ caddr_t ;
typedef int attributelist ;
struct TYPE_4__ {int fg_flag; scalar_t__ fg_offset; scalar_t__ fg_data; } ;
struct TYPE_3__ {int mnt_flag; } ;


 int ARG_VNODE1 ;
 int ATTR_CMN_NAME ;
 int AUDIT_ARG (int,...) ;
 int EBADF ;
 int EINVAL ;
 int FREAD ;
 int KAUTH_VNODE_LIST_DIRECTORY ;
 int KAUTH_VNODE_SEARCH ;
 int MNT_UNION ;
 int O_EVTONLY ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 scalar_t__ VDIR ;
 int VNOP_READDIRATTR (struct vnode*,struct attrlist*,int *,scalar_t__,int ,scalar_t__*,int*,scalar_t__*,int ) ;
 int copyin (int ,scalar_t__,int) ;
 int copyout (scalar_t__,int ,int) ;
 int file_drop (int) ;
 int fp_getfvp (int ,int,struct fileproc**,struct vnode**) ;
 scalar_t__ lookup_traverse_union (struct vnode*,struct vnode**,int ) ;
 int mac_file_check_change_offset (int ,TYPE_2__*) ;
 int mac_vnode_check_readdir (int ,struct vnode*) ;
 scalar_t__ proc_is64bit (int ) ;
 int uio_addiov (int *,int ,scalar_t__) ;
 int * uio_createwithbuffer (int,scalar_t__,int,int ,char*,int) ;
 scalar_t__ uio_offset (int *) ;
 scalar_t__ uio_resid (int *) ;
 int vfs_context_current () ;
 int vfs_context_ucred (int ) ;
 int vnode_authorize (struct vnode*,int *,int ,int ) ;
 int vnode_getwithref (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 int vnode_ref_ext (struct vnode*,int,int ) ;
 int vnode_rele_internal (struct vnode*,int,int ,int ) ;
 int vnpath ;
 int vnpath_withref ;

int
getdirentriesattr (proc_t p, struct getdirentriesattr_args *uap, int32_t *retval)
{
 vnode_t vp;
 struct fileproc *fp;
 uio_t auio = ((void*)0);
 int spacetype = proc_is64bit(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 uint32_t count = 0, savecount = 0;
 uint32_t newstate = 0;
 int error, eofflag;
 uint32_t loff = 0;
 struct attrlist attributelist;
 vfs_context_t ctx = vfs_context_current();
 int fd = uap->fd;
 char uio_buf[ UIO_SIZEOF(1) ];
 kauth_action_t action;

 AUDIT_ARG(fd, fd);


 if ((error = copyin(uap->alist, (caddr_t)&attributelist, sizeof(attributelist)))) {
  return(error);
 }
 if ((error = copyin(uap->count, (caddr_t)&count, sizeof(count)))) {
  return(error);
 }
 savecount = count;
 if ( (error = fp_getfvp(p, fd, &fp, &vp)) ) {
  return (error);
 }
 if ((fp->f_fglob->fg_flag & FREAD) == 0) {
  AUDIT_ARG(vnpath_withref, vp, ARG_VNODE1);
  error = EBADF;
  goto out;
 }
 if ( (error = vnode_getwithref(vp)) )
  goto out;

 AUDIT_ARG(vnpath, vp, ARG_VNODE1);

unionread:
 if (vp->v_type != VDIR) {
  (void)vnode_put(vp);
  error = EINVAL;
  goto out;
 }
 loff = fp->f_fglob->fg_offset;
 auio = uio_createwithbuffer(1, loff, spacetype, UIO_READ, &uio_buf[0], sizeof(uio_buf));
 uio_addiov(auio, uap->buffer, uap->buffersize);






 action = KAUTH_VNODE_LIST_DIRECTORY;
 if ((attributelist.commonattr & ~ATTR_CMN_NAME) ||
     attributelist.fileattr || attributelist.dirattr)
  action |= KAUTH_VNODE_SEARCH;

 if ((error = vnode_authorize(vp, ((void*)0), action, ctx)) == 0) {




  error = VNOP_READDIRATTR(vp, &attributelist, auio, count,
    (u_long)(uint32_t)uap->options, &newstate, &eofflag, &count, ctx);
 }

 if (error) {
  (void) vnode_put(vp);
  goto out;
 }
 if (eofflag && vp->v_mount->mnt_flag & MNT_UNION) {
  if (uio_resid(auio) < (user_ssize_t) uap->buffersize) {
   eofflag = 0;
  } else {
   struct vnode *tvp = vp;
   if (lookup_traverse_union(tvp, &vp, ctx) == 0) {
    vnode_ref_ext(vp, fp->f_fglob->fg_flag & O_EVTONLY, 0);
    fp->f_fglob->fg_data = (caddr_t) vp;
    fp->f_fglob->fg_offset = 0;
    count = savecount;
    vnode_rele_internal(tvp, fp->f_fglob->fg_flag & O_EVTONLY, 0, 0);
    vnode_put(tvp);
    goto unionread;
   }
   vp = tvp;
  }
 }

 (void)vnode_put(vp);

 if (error)
  goto out;
 fp->f_fglob->fg_offset = uio_offset(auio);

 if ((error = copyout((caddr_t) &count, uap->count, sizeof(count))))
  goto out;
 if ((error = copyout((caddr_t) &newstate, uap->newstate, sizeof(newstate))))
  goto out;
 if ((error = copyout((caddr_t) &loff, uap->basep, sizeof(loff))))
  goto out;

 *retval = eofflag;
 error = 0;
out:
 file_drop(fd);
 return (error);

}
