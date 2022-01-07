
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct cs_blob {int dummy; } ;
typedef int off_t ;


 struct cs_blob* ubc_cs_blob_get (struct vnode*,int,int ) ;

struct cs_blob *
csvnode_get_blob(struct vnode *vp, off_t offset)
{
 return ubc_cs_blob_get(vp, -1, offset);
}
