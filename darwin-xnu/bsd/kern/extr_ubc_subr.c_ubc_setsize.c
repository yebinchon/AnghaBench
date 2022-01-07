
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int off_t ;


 scalar_t__ ubc_setsize_ex (int ,int ,int ) ;

int ubc_setsize(vnode_t vp, off_t nsize)
{
 return ubc_setsize_ex(vp, nsize, 0) == 0;
}
