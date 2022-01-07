
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct vfs_context {int dummy; } ;
struct lseek_args {scalar_t__ offset; int whence; int fd; } ;
struct fileproc {TYPE_7__* f_fglob; } ;
typedef int proc_t ;
typedef scalar_t__ off_t ;
typedef int caddr_t ;
struct TYPE_12__ {scalar_t__ fg_offset; } ;
struct TYPE_11__ {scalar_t__ v_type; } ;


 int EINVAL ;
 int ENOTSUP ;
 int EOVERFLOW ;
 int ESPIPE ;
 int FSIOC_FIOSEEKDATA ;
 int FSIOC_FIOSEEKHOLE ;



 int NOTE_NONE ;


 scalar_t__ VCHR ;
 int VNOP_IOCTL (TYPE_1__*,int ,int ,int ,struct vfs_context*) ;
 int file_drop (int ) ;
 int fp_getfvp (int ,int ,struct fileproc**,TYPE_1__**) ;
 int mac_file_check_change_offset (int ,TYPE_7__*) ;
 int mac_file_check_get_offset (int ,TYPE_7__*) ;
 int post_event_if_success (TYPE_1__*,int,int ) ;
 struct vfs_context* vfs_context_current () ;
 int vfs_context_ucred (struct vfs_context*) ;
 int vnode_getwithref (TYPE_1__*) ;
 scalar_t__ vnode_isfifo (TYPE_1__*) ;
 int vnode_put (TYPE_1__*) ;
 int vnode_size (TYPE_1__*,scalar_t__*,struct vfs_context*) ;

int
lseek(proc_t p, struct lseek_args *uap, off_t *retval)
{
 struct fileproc *fp;
 vnode_t vp;
 struct vfs_context *ctx;
 off_t offset = uap->offset, file_size;
 int error;

 if ( (error = fp_getfvp(p,uap->fd, &fp, &vp)) ) {
         if (error == ENOTSUP)
          return (ESPIPE);
  return (error);
 }
 if (vnode_isfifo(vp)) {
  file_drop(uap->fd);
  return(ESPIPE);
 }


 ctx = vfs_context_current();
 if ( (error = vnode_getwithref(vp)) ) {
  file_drop(uap->fd);
  return(error);
 }

 switch (uap->whence) {
 case 132:
  offset += fp->f_fglob->fg_offset;
  break;
 case 130:
  if ((error = vnode_size(vp, &file_size, ctx)) != 0)
   break;
  offset += file_size;
  break;
 case 131:
  break;
 case 128:
        error = VNOP_IOCTL(vp, FSIOC_FIOSEEKHOLE, (caddr_t)&offset, 0, ctx);
  break;
 case 129:
        error = VNOP_IOCTL(vp, FSIOC_FIOSEEKDATA, (caddr_t)&offset, 0, ctx);
  break;
 default:
  error = EINVAL;
 }
 if (error == 0) {
  if (uap->offset > 0 && offset < 0) {

   error = EOVERFLOW;
  } else {





   if (offset < 0 && vp->v_type != VCHR) {

    error = EINVAL;
   } else {

    fp->f_fglob->fg_offset = offset;
    *retval = fp->f_fglob->fg_offset;
   }
  }
 }





 post_event_if_success(vp, error, NOTE_NONE);
 (void)vnode_put(vp);
 file_drop(uap->fd);
 return (error);
}
