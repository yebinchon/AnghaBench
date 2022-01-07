
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
struct vnode {int dummy; } ;
struct cs_blob {int dummy; } ;
typedef int memory_object_t ;
typedef scalar_t__ memory_object_offset_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ cs_validate_hash (struct cs_blob*,int ,scalar_t__,void const*,scalar_t__*,unsigned int*) ;
 struct cs_blob* ubc_get_cs_blobs (struct vnode*) ;

boolean_t
cs_validate_range(
 struct vnode *vp,
 memory_object_t pager,
 memory_object_offset_t page_offset,
 const void *data,
 vm_size_t dsize,
 unsigned *tainted)
{
 vm_size_t offset_in_range;
 boolean_t all_subranges_validated = TRUE;

 struct cs_blob *blobs = ubc_get_cs_blobs(vp);

 *tainted = 0;

 for (offset_in_range = 0;
   offset_in_range < dsize;
                                                         ) {
  unsigned subrange_tainted = 0;
  boolean_t subrange_validated;
  vm_size_t bytes_processed = 0;

  subrange_validated = cs_validate_hash(blobs,
             pager,
             page_offset + offset_in_range,
             (const void *)((const char *)data + offset_in_range),
             &bytes_processed,
             &subrange_tainted);

  *tainted |= subrange_tainted;

  if (bytes_processed == 0) {

   all_subranges_validated = FALSE;
   break;
  } else if (subrange_validated == FALSE) {
   all_subranges_validated = FALSE;

  }

  offset_in_range += bytes_processed;
 }

 return all_subranges_validated;
}
