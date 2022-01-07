
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nfsnode_t ;
typedef int daddr64_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ nfs_buf_incore (int ,int ) ;
 int nfs_buf_mutex ;

boolean_t
nfs_buf_is_incore(nfsnode_t np, daddr64_t blkno)
{
 boolean_t rv;
 lck_mtx_lock(nfs_buf_mutex);
 if (nfs_buf_incore(np, blkno))
  rv = TRUE;
 else
  rv = FALSE;
 lck_mtx_unlock(nfs_buf_mutex);
 return (rv);
}
