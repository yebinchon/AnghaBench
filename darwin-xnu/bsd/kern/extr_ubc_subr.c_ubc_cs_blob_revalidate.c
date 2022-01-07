
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct vnode {TYPE_1__* v_ubcinfo; } ;
struct image_params {int dummy; } ;
struct cs_blob {size_t csb_mem_size; unsigned int csb_flags; unsigned int csb_signer_type; scalar_t__ csb_reconstituted; scalar_t__ csb_mem_kaddr; } ;
struct TYPE_7__ {int p_pid; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ cs_add_gen; } ;
typedef int CS_GenericBlob ;
typedef TYPE_2__ CS_CodeDirectory ;


 unsigned int CS_ALLOWED_MACHO ;
 unsigned int CS_SIGNER_TYPE_UNKNOWN ;
 unsigned int CS_VALID ;
 int EAGAIN ;
 scalar_t__ UBCINFOEXISTS (struct vnode*) ;
 int assert (int ) ;
 scalar_t__ cs_blob_generation_count ;
 scalar_t__ cs_debug ;
 int cs_validate_csblob (int const*,size_t,TYPE_2__ const**,int const**) ;
 TYPE_3__* current_proc () ;
 int mac_vnode_check_signature (struct vnode*,struct cs_blob*,struct image_params*,unsigned int*,unsigned int*,int) ;
 unsigned int ntohl (int ) ;
 int printf (char*,...) ;
 int vnode_lock_spin (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

int
ubc_cs_blob_revalidate(
 struct vnode *vp,
 struct cs_blob *blob,
 struct image_params *imgp,
 int flags
 )
{
 int error = 0;
 const CS_CodeDirectory *cd = ((void*)0);
 const CS_GenericBlob *entitlements = ((void*)0);
 size_t size;
 assert(vp != ((void*)0));
 assert(blob != ((void*)0));

 size = blob->csb_mem_size;
 error = cs_validate_csblob((const uint8_t *)blob->csb_mem_kaddr,
          size, &cd, &entitlements);
 if (error) {
  if (cs_debug) {
   printf("CODESIGNING: csblob invalid: %d\n", error);
  }
  goto out;
 }

    unsigned int cs_flags = (ntohl(cd->flags) & CS_ALLOWED_MACHO) | CS_VALID;
    unsigned int signer_type = CS_SIGNER_TYPE_UNKNOWN;

 if (blob->csb_reconstituted) {
  if (cs_debug) {
   printf("CODESIGNING: revalidate: not inline revalidating reconstituted signature.\n");
  }
  return EAGAIN;
 }
 (void)flags;
 (void)signer_type;



 vnode_lock_spin(vp);
    blob->csb_flags = cs_flags;
 blob->csb_signer_type = signer_type;
 if (UBCINFOEXISTS(vp)) {
  if (error == 0)
   vp->v_ubcinfo->cs_add_gen = cs_blob_generation_count;
  else
   vp->v_ubcinfo->cs_add_gen = 0;
 }

 vnode_unlock(vp);

out:
 return error;
}
