
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct vnode* vnode_t ;
struct vnode {struct ubc_info* v_ubcinfo; } ;
struct ubc_info {TYPE_1__* cs_blobs; } ;
struct fileglob {scalar_t__ fg_data; } ;
struct TYPE_2__ {int csb_flags; } ;


 int CS_DEV_CODE ;
 scalar_t__ DTYPE_VNODE ;
 scalar_t__ FILEGLOB_DTYPE (struct fileglob*) ;
 int UBCINFOEXISTS (struct vnode*) ;
 int vnode_lock (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

int
csfg_get_prod_signed(struct fileglob *fg)
{
 struct ubc_info *uip;
 vnode_t vp;
 int prod_signed = 0;

 if (FILEGLOB_DTYPE(fg) != DTYPE_VNODE)
  return 0;

 vp = (struct vnode *)fg->fg_data;
 if (vp == ((void*)0))
  return 0;

 vnode_lock(vp);
 if (!UBCINFOEXISTS(vp))
  goto out;

 uip = vp->v_ubcinfo;
 if (uip == ((void*)0))
  goto out;

 if (uip->cs_blobs == ((void*)0))
  goto out;



 prod_signed = (uip->cs_blobs->csb_flags & CS_DEV_CODE) == 0;
out:
 vnode_unlock(vp);

 return prod_signed;
}
