
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int UBCINFOEXISTS (struct vnode*) ;
 int ubc_isinuse_locked (struct vnode*,int,int ) ;

int
ubc_isinuse(struct vnode *vp, int busycount)
{
 if ( !UBCINFOEXISTS(vp))
  return (0);
 return(ubc_isinuse_locked(vp, busycount, 0));
}
