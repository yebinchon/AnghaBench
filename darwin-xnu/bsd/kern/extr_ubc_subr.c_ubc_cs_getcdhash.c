
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct cs_blob {scalar_t__ csb_base_offset; scalar_t__ csb_start_offset; scalar_t__ csb_end_offset; int csb_cdhash; struct cs_blob* csb_next; } ;
typedef scalar_t__ off_t ;


 int EBADEXEC ;
 int bcopy (int ,unsigned char*,int) ;
 struct cs_blob* ubc_get_cs_blobs (int ) ;
 int vnode_lock (int ) ;
 int vnode_unlock (int ) ;

int
ubc_cs_getcdhash(
 vnode_t vp,
 off_t offset,
 unsigned char *cdhash)
{
 struct cs_blob *blobs, *blob;
 off_t rel_offset;
 int ret;

 vnode_lock(vp);

 blobs = ubc_get_cs_blobs(vp);
 for (blob = blobs;
      blob != ((void*)0);
      blob = blob->csb_next) {

  rel_offset = offset - blob->csb_base_offset;
  if (rel_offset >= blob->csb_start_offset &&
      rel_offset < blob->csb_end_offset) {

   break;
  }
 }

 if (blob == ((void*)0)) {

  ret = EBADEXEC;
 } else {

  bcopy(blob->csb_cdhash, cdhash, sizeof (blob->csb_cdhash));
  ret = 0;
 }

 vnode_unlock(vp);

 return ret;
}
