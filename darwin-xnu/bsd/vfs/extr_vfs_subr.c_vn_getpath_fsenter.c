
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int build_path (struct vnode*,char*,int,int*,int ,int ) ;
 int vfs_context_current () ;

int
vn_getpath_fsenter(struct vnode *vp, char *pathbuf, int *len)
{
 return build_path(vp, pathbuf, *len, len, 0, vfs_context_current());
}
