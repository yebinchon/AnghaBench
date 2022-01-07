
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_ubcinfo; } ;
typedef int kauth_cred_t ;
struct TYPE_2__ {int ui_ucred; } ;


 int NOCRED ;
 scalar_t__ UBCINFOEXISTS (struct vnode*) ;

kauth_cred_t
ubc_getcred(struct vnode *vp)
{
        if (UBCINFOEXISTS(vp))
         return (vp->v_ubcinfo->ui_ucred);

 return (NOCRED);
}
