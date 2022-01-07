
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct ubc_info* v_ubcinfo; } ;
struct ubc_info {struct cs_blob* cs_blobs; } ;
struct cs_blob {int csb_cpu_type; int csb_base_offset; int csb_start_offset; int csb_end_offset; struct cs_blob* csb_next; } ;
typedef int off_t ;
typedef int cpu_type_t ;


 int UBCINFOEXISTS (struct vnode*) ;
 int vnode_lock_spin (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

struct cs_blob *
ubc_cs_blob_get(
 struct vnode *vp,
 cpu_type_t cputype,
 off_t offset)
{
 struct ubc_info *uip;
 struct cs_blob *blob;
 off_t offset_in_blob;

 vnode_lock_spin(vp);

 if (! UBCINFOEXISTS(vp)) {
  blob = ((void*)0);
  goto out;
 }

 uip = vp->v_ubcinfo;
 for (blob = uip->cs_blobs;
      blob != ((void*)0);
      blob = blob->csb_next) {
  if (cputype != -1 && blob->csb_cpu_type == cputype) {
   break;
  }
  if (offset != -1) {
   offset_in_blob = offset - blob->csb_base_offset;
   if (offset_in_blob >= blob->csb_start_offset &&
       offset_in_blob < blob->csb_end_offset) {

    break;
   }
  }
 }

out:
 vnode_unlock(vp);

 return blob;
}
