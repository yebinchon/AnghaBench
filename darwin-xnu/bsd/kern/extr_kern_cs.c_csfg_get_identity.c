
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vnode* vnode_t ;
struct vnode {int dummy; } ;
struct fileglob {scalar_t__ fg_data; } ;
struct cs_blob {int dummy; } ;
typedef int off_t ;


 scalar_t__ DTYPE_VNODE ;
 scalar_t__ FILEGLOB_DTYPE (struct fileglob*) ;
 char const* csblob_get_identity (struct cs_blob*) ;
 struct cs_blob* ubc_cs_blob_get (struct vnode*,int,int ) ;

const char *
csfg_get_identity(struct fileglob *fg, off_t offset)
{
 vnode_t vp;
 struct cs_blob *csblob = ((void*)0);

 if (FILEGLOB_DTYPE(fg) != DTYPE_VNODE)
  return ((void*)0);

 vp = (struct vnode *)fg->fg_data;
 if (vp == ((void*)0))
  return ((void*)0);

 csblob = ubc_cs_blob_get(vp, -1, offset);
 if (csblob == ((void*)0))
  return ((void*)0);

 return csblob_get_identity(csblob);
}
