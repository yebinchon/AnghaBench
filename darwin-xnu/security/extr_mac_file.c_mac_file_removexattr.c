
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct fileglob {scalar_t__ fg_data; } ;


 scalar_t__ DTYPE_VNODE ;
 int EFTYPE ;
 scalar_t__ FILEGLOB_DTYPE (struct fileglob*) ;
 int mac_vnop_removexattr (struct vnode*,char const*) ;

int
mac_file_removexattr(struct fileglob *fg, const char *name) {
 struct vnode *vp = ((void*)0);

 if (!fg || FILEGLOB_DTYPE(fg) != DTYPE_VNODE) {
  return EFTYPE;
 }

 vp = (struct vnode *)fg->fg_data;
 return mac_vnop_removexattr(vp, name);
}
