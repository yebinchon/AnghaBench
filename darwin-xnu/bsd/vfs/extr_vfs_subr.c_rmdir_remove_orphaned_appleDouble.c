
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef int * uio_t ;
typedef int uio_buf ;
typedef int uint8_t ;
struct dirent {scalar_t__ d_ino; int d_namlen; char* d_name; int d_reclen; } ;
typedef scalar_t__ errno_t ;
struct TYPE_9__ {scalar_t__ v_tag; } ;


 int CAST_USER_ADDR_T (char*) ;
 scalar_t__ EBUSY ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOMEM ;
 scalar_t__ ENOTEMPTY ;
 int FREAD ;
 int FREE (char*,int ) ;
 int MALLOC (char*,int ,int,int ,int ) ;
 int M_TEMP ;
 int M_WAITOK ;
 int UIO_BUFF_SIZE ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int VNODE_REMOVE_NO_AUDIT_PATH ;
 int VNODE_REMOVE_SKIP_NAMESPACE_EVENT ;
 int VNOP_CLOSE (TYPE_1__*,int ,int ) ;
 scalar_t__ VNOP_OPEN (TYPE_1__*,int ,int ) ;
 scalar_t__ VNOP_READDIR (TYPE_1__*,int *,int ,int*,int*,int ) ;
 scalar_t__ VT_HFS ;
 scalar_t__ VT_NFS ;
 int caddr_t ;
 scalar_t__ strncmp (char*,char*,int) ;
 int uio_addiov (int *,int ,int) ;
 int * uio_createwithbuffer (int,int ,int ,int ,char*,int) ;
 int uio_free (int *) ;
 int uio_offset (int *) ;
 int uio_reset (int *,int ,int ,int ) ;
 scalar_t__ uio_resid (int *) ;
 int uio_setoffset (int *,int ) ;
 scalar_t__ unlink1 (int ,TYPE_1__*,int ,int ,int) ;
 int vnode_resume (TYPE_1__*) ;
 scalar_t__ vnode_suspend (TYPE_1__*) ;

errno_t rmdir_remove_orphaned_appleDouble(vnode_t vp , vfs_context_t ctx, int * restart_flag)
{


 uio_t auio = ((void*)0);
 int eofflag, siz = 2048, nentries = 0;
 int open_flag = 0, full_erase_flag = 0;
 char uio_buf[ UIO_SIZEOF(1) ];
 char *rbuf = ((void*)0);
    void *dir_pos;
 void *dir_end;
 struct dirent *dp;
 errno_t error;

 error = vnode_suspend(vp);




 if (error == EBUSY)
  *restart_flag = 1;
 if (error != 0)
  return (error);




 MALLOC(rbuf, caddr_t, siz, M_TEMP, M_WAITOK);
 if (rbuf)
  auio = uio_createwithbuffer(1, 0, UIO_SYSSPACE, UIO_READ,
    &uio_buf[0], sizeof(uio_buf));
 if (!rbuf || !auio) {
  error = ENOMEM;
  goto outsc;
 }

 uio_setoffset(auio,0);

 eofflag = 0;

 if ((error = VNOP_OPEN(vp, FREAD, ctx)))
  goto outsc;
 else
  open_flag = 1;





 do {
  siz = 2048;
  uio_reset(auio, uio_offset(auio), UIO_SYSSPACE, UIO_READ);
  uio_addiov(auio, CAST_USER_ADDR_T(rbuf), 2048);

  if((error = VNOP_READDIR(vp, auio, 0, &eofflag, &nentries, ctx)))
   goto outsc;

  if (uio_resid(auio) != 0)
   siz -= uio_resid(auio);




  dir_pos = (void*) rbuf;
  dir_end = (void*) (rbuf + siz);
  dp = (struct dirent*) (dir_pos);

  if (dir_pos == dir_end)
   eofflag = 1;

  while (dir_pos < dir_end) {



   if (dp->d_ino != 0 &&
     !((dp->d_namlen == 1 && dp->d_name[0] == '.') ||
         (dp->d_namlen == 2 && dp->d_name[0] == '.' && dp->d_name[1] == '.'))) {




    if ( dp->d_namlen < 2 ||
      strncmp(dp->d_name,"._",2) ||
      (dp->d_namlen >= 4 && !strncmp(&(dp->d_name[2]), "._",2))) {
     error = ENOTEMPTY;
     goto outsc;
    }
   }
   dir_pos = (void*) ((uint8_t*)dir_pos + dp->d_reclen);
   dp = (struct dirent*)dir_pos;
  }




  if (vp->v_tag == VT_HFS && nentries > 2)
   eofflag=0;

  if (vp->v_tag == VT_NFS) {
   if (eofflag && !full_erase_flag) {
    full_erase_flag = 1;
    eofflag = 0;
    uio_reset(auio, 0, UIO_SYSSPACE, UIO_READ);
   }
   else if (!eofflag && full_erase_flag)
    full_erase_flag = 0;
  }

 } while (!eofflag);






 uio_reset(auio, 0, UIO_SYSSPACE, UIO_READ);
 eofflag = 0;
 full_erase_flag = 0;

 do {
  siz = 2048;
  uio_reset(auio, uio_offset(auio), UIO_SYSSPACE, UIO_READ);
  uio_addiov(auio, CAST_USER_ADDR_T(rbuf), 2048);

  error = VNOP_READDIR(vp, auio, 0, &eofflag, &nentries, ctx);

  if (error != 0)
   goto outsc;

  if (uio_resid(auio) != 0)
   siz -= uio_resid(auio);




  dir_pos = (void*) rbuf;
  dir_end = (void*) (rbuf + siz);
  dp = (struct dirent*) dir_pos;

  if (dir_pos == dir_end)
   eofflag = 1;

  while (dir_pos < dir_end) {



   if (dp->d_ino != 0 &&
     !((dp->d_namlen == 1 && dp->d_name[0] == '.') ||
         (dp->d_namlen == 2 && dp->d_name[0] == '.' && dp->d_name[1] == '.'))
       ) {

    error = unlink1(ctx, vp,
        CAST_USER_ADDR_T(dp->d_name), UIO_SYSSPACE,
        VNODE_REMOVE_SKIP_NAMESPACE_EVENT |
        VNODE_REMOVE_NO_AUDIT_PATH);

    if (error && error != ENOENT) {
     goto outsc;
    }

   }
   dir_pos = (void*) ((uint8_t*)dir_pos + dp->d_reclen);
   dp = (struct dirent*)dir_pos;
  }




  if (vp->v_tag == VT_HFS && nentries > 2)
   eofflag=0;

  if (vp->v_tag == VT_NFS) {
   if (eofflag && !full_erase_flag) {
    full_erase_flag = 1;
    eofflag = 0;
    uio_reset(auio, 0, UIO_SYSSPACE, UIO_READ);
   }
   else if (!eofflag && full_erase_flag)
    full_erase_flag = 0;
  }

 } while (!eofflag);


 error = 0;

outsc:
 if (open_flag)
  VNOP_CLOSE(vp, FREAD, ctx);

 if (auio)
  uio_free(auio);
 FREE(rbuf, M_TEMP);

 vnode_resume(vp);


 return(error);

}
