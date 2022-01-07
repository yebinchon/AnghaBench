
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int BUILDPATH_NO_FS_ENTER ;
 int build_path (struct vnode*,char*,int,int*,int ,int ) ;
 int vfs_context_current () ;

int
vn_getpath(struct vnode *vp, char *pathbuf, int *len)
{
 return build_path(vp, pathbuf, *len, len, BUILDPATH_NO_FS_ENTER, vfs_context_current());
}
