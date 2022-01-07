
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int ENOENT ;
 int NULLVP ;
 int nullfs_getbackingvnode (int ,int *) ;

int
vnode_getbackingvnode(vnode_t in_vp, vnode_t* out_vpp)
{
 if (out_vpp) {
  *out_vpp = NULLVP;
 }



#pragma unused(in_vp)
 return ENOENT;

}
