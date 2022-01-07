
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nfs_open_owner {int dummy; } ;
struct nfs_open_file {int dummy; } ;
typedef int nfsnode_t ;


 int nfs_open_file_find_internal (int ,struct nfs_open_owner*,struct nfs_open_file**,int ,int ,int) ;

int
nfs_open_file_find(
 nfsnode_t np,
 struct nfs_open_owner *noop,
 struct nfs_open_file **nofpp,
 uint32_t accessMode,
 uint32_t denyMode,
 int alloc)
{
 *nofpp = ((void*)0);
 return nfs_open_file_find_internal(np, noop, nofpp, accessMode, denyMode, alloc);
}
