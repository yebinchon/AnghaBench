
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nfs_open_file {int nof_lock; int nof_opencnt; int nof_rw_drw; int nof_w_drw; int nof_r_drw; int nof_rw_dw; int nof_w_dw; int nof_r_dw; int nof_rw; int nof_w; int nof_r; int nof_d_rw_drw; int nof_d_w_drw; int nof_d_r_drw; int nof_d_rw_dw; int nof_d_w_dw; int nof_d_r_dw; int nof_d_rw; int nof_d_w; int nof_d_r; int nof_deny; int nof_access; } ;


 int NFS_OPEN_SHARE_ACCESS_BOTH ;
 int NFS_OPEN_SHARE_ACCESS_READ ;
 int NFS_OPEN_SHARE_ACCESS_WRITE ;
 int NFS_OPEN_SHARE_DENY_NONE ;
 int NFS_OPEN_SHARE_DENY_WRITE ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
nfs_open_file_add_open(struct nfs_open_file *nofp, uint32_t accessMode, uint32_t denyMode, int delegated)
{
 lck_mtx_lock(&nofp->nof_lock);
 nofp->nof_access |= accessMode;
 nofp->nof_deny |= denyMode;

 if (delegated) {
  if (denyMode == NFS_OPEN_SHARE_DENY_NONE) {
   if (accessMode == NFS_OPEN_SHARE_ACCESS_READ)
    nofp->nof_d_r++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_WRITE)
    nofp->nof_d_w++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_BOTH)
    nofp->nof_d_rw++;
  } else if (denyMode == NFS_OPEN_SHARE_DENY_WRITE) {
   if (accessMode == NFS_OPEN_SHARE_ACCESS_READ)
    nofp->nof_d_r_dw++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_WRITE)
    nofp->nof_d_w_dw++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_BOTH)
    nofp->nof_d_rw_dw++;
  } else {
   if (accessMode == NFS_OPEN_SHARE_ACCESS_READ)
    nofp->nof_d_r_drw++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_WRITE)
    nofp->nof_d_w_drw++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_BOTH)
    nofp->nof_d_rw_drw++;
  }
 } else {
  if (denyMode == NFS_OPEN_SHARE_DENY_NONE) {
   if (accessMode == NFS_OPEN_SHARE_ACCESS_READ)
    nofp->nof_r++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_WRITE)
    nofp->nof_w++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_BOTH)
    nofp->nof_rw++;
  } else if (denyMode == NFS_OPEN_SHARE_DENY_WRITE) {
   if (accessMode == NFS_OPEN_SHARE_ACCESS_READ)
    nofp->nof_r_dw++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_WRITE)
    nofp->nof_w_dw++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_BOTH)
    nofp->nof_rw_dw++;
  } else {
   if (accessMode == NFS_OPEN_SHARE_ACCESS_READ)
    nofp->nof_r_drw++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_WRITE)
    nofp->nof_w_drw++;
   else if (accessMode == NFS_OPEN_SHARE_ACCESS_BOTH)
    nofp->nof_rw_drw++;
  }
 }

 nofp->nof_opencnt++;
 lck_mtx_unlock(&nofp->nof_lock);
}
