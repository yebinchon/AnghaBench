
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct cs_blob {int dummy; } ;
typedef int off_t ;


 char const* csblob_get_teamid (struct cs_blob*) ;
 struct cs_blob* ubc_cs_blob_get (struct vnode*,int,int ) ;

const char *
csvnode_get_teamid(struct vnode *vp, off_t offset)
{
 struct cs_blob *csblob;

 if (vp == ((void*)0))
  return ((void*)0);

 csblob = ubc_cs_blob_get(vp, -1, offset);
 if (csblob == ((void*)0))
     return ((void*)0);

 return csblob_get_teamid(csblob);
}
