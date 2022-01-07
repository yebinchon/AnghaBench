
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct ubc_info* v_ubcinfo; } ;
struct ubc_info {struct cs_blob* cs_blobs; } ;
struct cs_blob {char* csb_teamid; scalar_t__ csb_platform_path; scalar_t__ csb_platform_binary; int csb_flags; scalar_t__ csb_end_offset; scalar_t__ csb_start_offset; struct cs_blob* csb_next; } ;


 int UBCINFOEXISTS (struct vnode*) ;
 int printf (char*,...) ;
 char* vnode_getname_printable (struct vnode*) ;
 int vnode_lock_spin (struct vnode*) ;
 int vnode_putname_printable (char const*) ;
 int vnode_unlock (struct vnode*) ;

void
csvnode_print_debug(struct vnode *vp)
{
 const char *name = ((void*)0);
 struct ubc_info *uip;
 struct cs_blob *blob;

 name = vnode_getname_printable(vp);
 if (name) {
  printf("csvnode: name: %s\n", name);
  vnode_putname_printable(name);
 }

 vnode_lock_spin(vp);

 if (! UBCINFOEXISTS(vp)) {
  blob = ((void*)0);
  goto out;
 }

 uip = vp->v_ubcinfo;
 for (blob = uip->cs_blobs; blob != ((void*)0); blob = blob->csb_next) {
  printf("csvnode: range: %lu -> %lu flags: 0x%08x platform: %s path: %s team: %s\n",
         (unsigned long)blob->csb_start_offset,
         (unsigned long)blob->csb_end_offset,
         blob->csb_flags,
         blob->csb_platform_binary ? "yes" : "no",
         blob->csb_platform_path ? "yes" : "no",
         blob->csb_teamid ? blob->csb_teamid : "<NO-TEAM>");
 }

out:
 vnode_unlock(vp);

}
