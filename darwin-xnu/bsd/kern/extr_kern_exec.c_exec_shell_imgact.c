
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct image_params {char* ip_vdata; int ip_flags; scalar_t__ ip_origcputype; int ip_interp_sugid_fd; char* ip_interp_buffer; scalar_t__ ip_vp; int ip_vfs_context; TYPE_1__* ip_origvattr; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
typedef int proc_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_4__ {scalar_t__ fg_data; int * fg_ops; int fg_flag; } ;
struct TYPE_3__ {int va_mode; } ;


 int CAST_USER_ADDR_T (char*) ;
 int ENOEXEC ;
 int FREAD ;
 int IMGPF_INTERPRET ;
 size_t IMG_SHSIZE ;
 scalar_t__ IS_EOL (char) ;
 scalar_t__ IS_WHITESPACE (char) ;
 int UIO_SYSSPACE ;
 int VSGID ;
 int VSUID ;
 int exec_reset_save_path (struct image_params*) ;
 int exec_save_path (struct image_params*,int ,int ,int *) ;
 int falloc (int ,struct fileproc**,int*,int ) ;
 int fp_drop (int ,int,struct fileproc*,int) ;
 int proc_fdlock (int ) ;
 int proc_fdunlock (int ) ;
 int procfdtbl_releasefd (int ,int,int *) ;
 scalar_t__ sugid_scripts ;
 int vfs_context_proc (int ) ;
 int vnode_ref (scalar_t__) ;
 int vnops ;

__attribute__((used)) static int
exec_shell_imgact(struct image_params *imgp)
{
 char *vdata = imgp->ip_vdata;
 char *ihp;
 char *line_startp, *line_endp;
 char *interp;





 if (vdata[0] != '#' ||
     vdata[1] != '!' ||
     (imgp->ip_flags & IMGPF_INTERPRET) != 0) {
  return (-1);
 }

 if (imgp->ip_origcputype != 0) {

  return (-1);
 }

 imgp->ip_flags |= IMGPF_INTERPRET;
 imgp->ip_interp_sugid_fd = -1;
 imgp->ip_interp_buffer[0] = '\0';





 if (sugid_scripts == 0) {
  imgp->ip_origvattr->va_mode &= ~(VSUID | VSGID);
 }


 for( ihp = &vdata[2]; ihp < &vdata[IMG_SHSIZE]; ihp++ ) {
  if (IS_EOL(*ihp)) {

   return (ENOEXEC);
  } else if (IS_WHITESPACE(*ihp)) {

  } else {

   break;
  }
 }

 if (ihp == &vdata[IMG_SHSIZE]) {

  return (ENOEXEC);
 }

 line_startp = ihp;


 for ( ; ihp < &vdata[IMG_SHSIZE]; ihp++ ) {
  if (IS_EOL(*ihp)) {

   break;
  } else {

  }
 }

 if (ihp == &vdata[IMG_SHSIZE]) {

  return (ENOEXEC);
 }


 while (IS_EOL(*ihp) || IS_WHITESPACE(*ihp)) {
  ihp--;
 }


 line_endp = ihp + 1;
 interp = imgp->ip_interp_buffer;
 for ( ihp = line_startp; (ihp < line_endp) && !IS_WHITESPACE(*ihp); ihp++)
  *interp++ = *ihp;
 *interp = '\0';

 exec_reset_save_path(imgp);
 exec_save_path(imgp, CAST_USER_ADDR_T(imgp->ip_interp_buffer),
       UIO_SYSSPACE, ((void*)0));


 interp = imgp->ip_interp_buffer;
 for ( ihp = line_startp; (ihp < line_endp); ihp++)
  *interp++ = *ihp;
 *interp = '\0';







 if (imgp->ip_origvattr->va_mode & (VSUID | VSGID)) {
  proc_t p;
  struct fileproc *fp;
  int fd;
  int error;

  p = vfs_context_proc(imgp->ip_vfs_context);
  error = falloc(p, &fp, &fd, imgp->ip_vfs_context);
  if (error)
   return(error);

  fp->f_fglob->fg_flag = FREAD;
  fp->f_fglob->fg_ops = &vnops;
  fp->f_fglob->fg_data = (caddr_t)imgp->ip_vp;

  proc_fdlock(p);
  procfdtbl_releasefd(p, fd, ((void*)0));
  fp_drop(p, fd, fp, 1);
  proc_fdunlock(p);
  vnode_ref(imgp->ip_vp);

  imgp->ip_interp_sugid_fd = fd;
 }


 return (-3);
}
