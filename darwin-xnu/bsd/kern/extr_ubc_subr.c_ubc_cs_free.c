
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubc_info {struct cs_blob* cs_blobs; int ui_vnode; } ;
struct cs_blob {scalar_t__ csb_mem_size; struct cs_blob* csb_next; } ;
typedef int SInt32 ;


 int OSAddAtomic (int,int *) ;
 int cs_blob_count ;
 int cs_blob_free (struct cs_blob*) ;
 int cs_blob_size ;
 int ubc_cs_validation_bitmap_deallocate (int ) ;

__attribute__((used)) static void
ubc_cs_free(
 struct ubc_info *uip)
{
 struct cs_blob *blob, *next_blob;

 for (blob = uip->cs_blobs;
      blob != ((void*)0);
      blob = next_blob) {
  next_blob = blob->csb_next;
  OSAddAtomic(-1, &cs_blob_count);
  OSAddAtomic((SInt32) -blob->csb_mem_size, &cs_blob_size);
  cs_blob_free(blob);
 }



 uip->cs_blobs = ((void*)0);
}
