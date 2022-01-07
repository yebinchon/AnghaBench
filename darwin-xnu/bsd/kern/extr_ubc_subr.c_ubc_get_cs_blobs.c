
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct ubc_info* v_ubcinfo; } ;
struct ubc_info {struct cs_blob* cs_blobs; } ;
struct cs_blob {int dummy; } ;


 int UBCINFOEXISTS (struct vnode*) ;

struct cs_blob *
ubc_get_cs_blobs(
 struct vnode *vp)
{
 struct ubc_info *uip;
 struct cs_blob *blobs;
 if (! UBCINFOEXISTS(vp)) {
  blobs = ((void*)0);
  goto out;
 }

 uip = vp->v_ubcinfo;
 blobs = uip->cs_blobs;

out:
 return blobs;
}
