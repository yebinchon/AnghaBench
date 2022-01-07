
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
struct vnode {int dummy; } ;
struct linkedit_data_command {int cmdsize; scalar_t__ dataoff; scalar_t__ datasize; } ;
struct image_params {int dummy; } ;
struct cs_blob {scalar_t__ csb_base_offset; int csb_end_offset; int csb_platform_binary; int csb_flags; int csb_cpu_type; } ;
typedef scalar_t__ off_t ;
typedef int load_return_t ;
struct TYPE_3__ {int cs_end_offset; int platform_binary; int csflags; } ;
typedef TYPE_1__ load_result_t ;
typedef scalar_t__ kern_return_t ;
typedef int cpu_type_t ;
typedef int caddr_t ;


 int EAGAIN ;
 scalar_t__ KERN_SUCCESS ;
 int LOAD_BADMACHO ;
 int LOAD_FAILURE ;
 int LOAD_IOERROR ;
 int LOAD_NOSPACE ;
 int LOAD_SUCCESS ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int assert (int) ;
 int current_proc () ;
 int kauth_cred_get () ;
 int panic (char*) ;
 int printf (char*,int) ;
 scalar_t__ ubc_cs_blob_add (struct vnode*,int ,scalar_t__,scalar_t__*,scalar_t__,struct image_params*,int ,struct cs_blob**) ;
 scalar_t__ ubc_cs_blob_allocate (scalar_t__*,scalar_t__*) ;
 int ubc_cs_blob_deallocate (scalar_t__,scalar_t__) ;
 struct cs_blob* ubc_cs_blob_get (struct vnode*,int ,scalar_t__) ;
 int ubc_cs_blob_revalidate (struct vnode*,struct cs_blob*,struct image_params*,int ) ;
 scalar_t__ ubc_cs_generation_check (struct vnode*) ;
 int ubc_cs_validation_bitmap_allocate (struct vnode*) ;
 int vn_rdwr (int ,struct vnode*,int ,scalar_t__,scalar_t__,int ,int ,int ,int*,int ) ;

__attribute__((used)) static load_return_t
load_code_signature(
 struct linkedit_data_command *lcp,
 struct vnode *vp,
 off_t macho_offset,
 off_t macho_size,
 cpu_type_t cputype,
 load_result_t *result,
 struct image_params *imgp)
{
 int ret;
 kern_return_t kr;
 vm_offset_t addr;
 int resid;
 struct cs_blob *blob;
 int error;
 vm_size_t blob_size;

 addr = 0;
 blob = ((void*)0);

 if (lcp->cmdsize != sizeof (struct linkedit_data_command) ||
     lcp->dataoff + lcp->datasize > macho_size) {
  ret = LOAD_BADMACHO;
  goto out;
 }

 blob = ubc_cs_blob_get(vp, cputype, macho_offset);

 if (blob != ((void*)0)) {

  if (blob->csb_cpu_type != cputype ||
      blob->csb_base_offset != macho_offset) {

   ret = LOAD_BADMACHO;
   goto out;
  }


  if (ubc_cs_generation_check(vp) == 0) {

   ret = LOAD_SUCCESS;
   goto out;
  }


  error = ubc_cs_blob_revalidate(vp, blob, imgp, 0);
  if (error == 0) {

   ret = LOAD_SUCCESS;
   goto out;
  }

  if (error != EAGAIN) {
   printf("load_code_signature: revalidation failed: %d\n", error);
   ret = LOAD_FAILURE;
   goto out;
  }

  assert(error == EAGAIN);





  blob = ((void*)0);
 }

 blob_size = lcp->datasize;
 kr = ubc_cs_blob_allocate(&addr, &blob_size);
 if (kr != KERN_SUCCESS) {
  ret = LOAD_NOSPACE;
  goto out;
 }

 resid = 0;
 error = vn_rdwr(UIO_READ,
   vp,
   (caddr_t) addr,
   lcp->datasize,
   macho_offset + lcp->dataoff,
   UIO_SYSSPACE,
   0,
   kauth_cred_get(),
   &resid,
   current_proc());
 if (error || resid != 0) {
  ret = LOAD_IOERROR;
  goto out;
 }

 if (ubc_cs_blob_add(vp,
       cputype,
       macho_offset,
       &addr,
       lcp->datasize,
       imgp,
       0,
       &blob)) {
  if (addr) {
   ubc_cs_blob_deallocate(addr, blob_size);
  }
  ret = LOAD_FAILURE;
  goto out;
 } else {

  addr = 0;
 }





 ret = LOAD_SUCCESS;
out:
 if (ret == LOAD_SUCCESS) {
  if (blob == ((void*)0))
   panic("success, but no blob!");

  result->csflags |= blob->csb_flags;
  result->platform_binary = blob->csb_platform_binary;
  result->cs_end_offset = blob->csb_end_offset;
 }
 if (addr != 0) {
  ubc_cs_blob_deallocate(addr, blob_size);
  addr = 0;
 }

 return ret;
}
