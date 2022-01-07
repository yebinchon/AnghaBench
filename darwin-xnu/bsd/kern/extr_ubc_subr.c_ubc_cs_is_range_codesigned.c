
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vnode_t ;
struct cs_blob {scalar_t__ csb_end_offset; scalar_t__ csb_base_offset; scalar_t__ csb_start_offset; } ;
typedef scalar_t__ mach_vm_size_t ;
typedef scalar_t__ mach_vm_offset_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 struct cs_blob* ubc_cs_blob_get (int *,int,scalar_t__) ;

boolean_t
ubc_cs_is_range_codesigned(
 vnode_t vp,
 mach_vm_offset_t start,
 mach_vm_size_t size)
{
 struct cs_blob *csblob;
 mach_vm_offset_t blob_start;
 mach_vm_offset_t blob_end;

 if (vp == ((void*)0)) {

  return FALSE;
 }
 if (size == 0) {

  return FALSE;
 }
 if (start + size < start) {

  return FALSE;
 }

 csblob = ubc_cs_blob_get(vp, -1, start);
 if (csblob == ((void*)0)) {
  return FALSE;
 }







 blob_start = (mach_vm_offset_t) (csblob->csb_base_offset +
      csblob->csb_start_offset);
 blob_end = (mach_vm_offset_t) (csblob->csb_base_offset +
           csblob->csb_end_offset);
 if (blob_start > start || blob_end < (start + size)) {

  return FALSE;
 }

 return TRUE;
}
