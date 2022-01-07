
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef int boolean_t ;


 scalar_t__ ubc_is_mapped (struct vnode const*,int*) ;

boolean_t ubc_is_mapped_writable(const struct vnode *vp)
{
 boolean_t writable;
 return ubc_is_mapped(vp, &writable) && writable;
}
