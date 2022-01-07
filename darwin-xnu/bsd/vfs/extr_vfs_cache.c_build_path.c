
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;


 int build_path_with_parent (int ,int *,char*,int,int*,int,int ) ;

int
build_path(vnode_t first_vp, char *buff, int buflen, int *outlen, int flags, vfs_context_t ctx)
{
 return (build_path_with_parent(first_vp, ((void*)0), buff, buflen, outlen, flags, ctx));
}
