
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vnode* vnode_t ;
typedef int uint8_t ;
typedef int uint64_t ;
struct vnode {int dummy; } ;
struct fileglob {scalar_t__ fg_data; } ;
struct cs_blob {int * csb_cdhash; } ;


 size_t CS_CDHASH_LEN ;
 scalar_t__ DTYPE_VNODE ;
 scalar_t__ FILEGLOB_DTYPE (struct fileglob*) ;
 struct cs_blob* ubc_cs_blob_get (struct vnode*,int,int ) ;

uint8_t *
csfg_get_cdhash(struct fileglob *fg, uint64_t offset, size_t *cdhash_size)
{
 vnode_t vp;

 if (FILEGLOB_DTYPE(fg) != DTYPE_VNODE)
  return ((void*)0);

 vp = (struct vnode *)fg->fg_data;
 if (vp == ((void*)0))
  return ((void*)0);

 struct cs_blob *csblob = ((void*)0);
 if ((csblob = ubc_cs_blob_get(vp, -1, offset)) == ((void*)0))
  return ((void*)0);

 if (cdhash_size)
  *cdhash_size = CS_CDHASH_LEN;

 return csblob->csb_cdhash;
}
