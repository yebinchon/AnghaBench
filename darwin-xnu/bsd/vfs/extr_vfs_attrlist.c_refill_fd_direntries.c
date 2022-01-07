
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int uio_t ;
typedef int uio_buf ;
struct fd_vn_data {int fv_eofflag; size_t fv_bufallocsiz; size_t fv_bufsiz; int * fv_buf; scalar_t__ fv_bufdone; int fv_eoff; int fv_soff; scalar_t__ fv_offset; } ;


 int CAST_USER_ADDR_T (int *) ;
 int FREE (int *,int ) ;
 size_t FV_DIRBUF_MAX_SIZ ;
 size_t FV_DIRBUF_START_SIZ ;
 int MALLOC (int *,int ,size_t,int ,int ) ;
 int M_FD_DIRBUF ;
 int M_WAITOK ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int VNODE_READDIR_EXTENDED ;
 int bzero (int *,size_t) ;
 int caddr_t ;
 int uio_addiov (int ,int ,size_t) ;
 int uio_createwithbuffer (int,int ,int ,int ,char*,int) ;
 int uio_offset (int ) ;
 int uio_reset (int ,int ,int ,int ) ;
 scalar_t__ uio_resid (int ) ;
 int vnode_readdir64 (int ,int ,int ,int*,int*,int ) ;

__attribute__((used)) static int
refill_fd_direntries(vfs_context_t ctx, vnode_t dvp, struct fd_vn_data *fvd,
    int *eofflagp)
{
 uio_t rdir_uio;
 char uio_buf[UIO_SIZEOF(1)];
 size_t rdirbufsiz;
 size_t rdirbufused;
 int eofflag;
 int nentries;
 int error;




 if (fvd->fv_eofflag) {
  *eofflagp = 1;
  if (fvd->fv_buf) {
   FREE(fvd->fv_buf, M_FD_DIRBUF);
   fvd->fv_buf = ((void*)0);
  }
  return 0;
 }

 error = 0;
 if (fvd->fv_offset && fvd->fv_bufallocsiz) {
  rdirbufsiz = fvd->fv_bufallocsiz;
 } else {
  rdirbufsiz = FV_DIRBUF_START_SIZ;
 }

 *eofflagp = 0;

 rdir_uio = uio_createwithbuffer(1, 0, UIO_SYSSPACE, UIO_READ,
     &uio_buf[0], sizeof(uio_buf));

retry_alloc:




 if (!fvd->fv_buf) {
  MALLOC(fvd->fv_buf, caddr_t, rdirbufsiz, M_FD_DIRBUF, M_WAITOK);
  fvd->fv_bufdone = 0;
 }

 uio_reset(rdir_uio, fvd->fv_eoff, UIO_SYSSPACE, UIO_READ);
 uio_addiov(rdir_uio, CAST_USER_ADDR_T(fvd->fv_buf), rdirbufsiz);




 eofflag = 0;
 nentries = 0;
 error = vnode_readdir64(dvp, rdir_uio, VNODE_READDIR_EXTENDED,
     &eofflag, &nentries, ctx);

 rdirbufused = rdirbufsiz - (size_t)uio_resid(rdir_uio);

 if (!error && (rdirbufused > 0) && (rdirbufused <= rdirbufsiz)) {

  fvd->fv_soff = fvd->fv_eoff;
  fvd->fv_eoff = uio_offset(rdir_uio);

  fvd->fv_eofflag = eofflag;
  eofflag = 0;

  fvd->fv_bufsiz = rdirbufused;
  fvd->fv_bufdone = 0;
  bzero(fvd->fv_buf + rdirbufused, rdirbufsiz - rdirbufused);

  fvd->fv_bufallocsiz = rdirbufsiz;
 } else if (!eofflag && (rdirbufsiz < FV_DIRBUF_MAX_SIZ)) {
  FREE(fvd->fv_buf, M_FD_DIRBUF);
  fvd->fv_buf = ((void*)0);
  rdirbufsiz = 2 * rdirbufsiz;
  fvd->fv_bufallocsiz = 0;
  goto retry_alloc;
 } else if (!error) {





  fvd->fv_eofflag = eofflag = 1;
 }





 if (error && fvd->fv_eofflag) {
  eofflag = 1;
  error = 0;
 }





 if ((error || eofflag) && fvd->fv_buf) {
  FREE(fvd->fv_buf, M_FD_DIRBUF);
  fvd->fv_buf = ((void*)0);
 }

 *eofflagp = eofflag;

 return (error);
}
