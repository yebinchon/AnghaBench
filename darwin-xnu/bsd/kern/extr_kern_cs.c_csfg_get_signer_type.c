
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct vnode* vnode_t ;
struct vnode {struct ubc_info* v_ubcinfo; } ;
struct ubc_info {TYPE_1__* cs_blobs; } ;
struct fileglob {scalar_t__ fg_data; } ;
struct TYPE_2__ {unsigned int csb_signer_type; } ;


 unsigned int CS_SIGNER_TYPE_UNKNOWN ;
 scalar_t__ DTYPE_VNODE ;
 scalar_t__ FILEGLOB_DTYPE (struct fileglob*) ;
 int UBCINFOEXISTS (struct vnode*) ;
 int vnode_lock (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

unsigned int
csfg_get_signer_type(struct fileglob *fg)
{
 struct ubc_info *uip;
 unsigned int signer_type = CS_SIGNER_TYPE_UNKNOWN;
 vnode_t vp;

 if (FILEGLOB_DTYPE(fg) != DTYPE_VNODE)
  return CS_SIGNER_TYPE_UNKNOWN;

 vp = (struct vnode *)fg->fg_data;
 if (vp == ((void*)0))
  return CS_SIGNER_TYPE_UNKNOWN;

 vnode_lock(vp);
 if (!UBCINFOEXISTS(vp))
  goto out;

 uip = vp->v_ubcinfo;
 if (uip == ((void*)0))
  goto out;

 if (uip->cs_blobs == ((void*)0))
  goto out;



 signer_type = uip->cs_blobs->csb_signer_type;
out:
 vnode_unlock(vp);

 return signer_type;
}
