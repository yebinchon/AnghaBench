
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int vnode_isinuse_locked (int ,int,int ) ;

int
vnode_isinuse(vnode_t vp, int refcnt)
{
 return(vnode_isinuse_locked(vp, refcnt, 0));
}
