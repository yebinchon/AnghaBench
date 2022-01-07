
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int thread_t ;
struct nfs_open_file {int dummy; } ;
struct componentname {int dummy; } ;
typedef int kauth_cred_t ;


 int NFS_OPEN_NOCREATE ;
 int nfs4_open_rpc_internal (struct nfs_open_file*,int *,int ,int ,struct componentname*,int *,int ,int *,int ,int,int) ;

int
nfs4_open_reopen_rpc(
 struct nfs_open_file *nofp,
 thread_t thd,
 kauth_cred_t cred,
 struct componentname *cnp,
 vnode_t dvp,
 vnode_t *vpp,
 int share_access,
 int share_deny)
{
 return (nfs4_open_rpc_internal(nofp, ((void*)0), thd, cred, cnp, ((void*)0), dvp, vpp, NFS_OPEN_NOCREATE, share_access, share_deny));
}
