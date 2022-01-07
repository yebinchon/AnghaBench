
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vnode* vnode_t ;
struct vnode {int dummy; } ;
struct fileglob {scalar_t__ fg_data; } ;


 scalar_t__ DTYPE_VNODE ;
 scalar_t__ FILEGLOB_DTYPE (struct fileglob*) ;
 int vn_getpath (struct vnode*,char*,int*) ;

int
csfg_get_path(struct fileglob *fg, char *path, int *len)
{
 vnode_t vp = ((void*)0);

 if (FILEGLOB_DTYPE(fg) != DTYPE_VNODE)
  return -1;

 vp = (struct vnode *)fg->fg_data;



 return vn_getpath(vp, path, len);
}
