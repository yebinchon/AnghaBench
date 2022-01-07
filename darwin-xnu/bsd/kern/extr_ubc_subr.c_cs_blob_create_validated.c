
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef int vm_offset_t ;
typedef scalar_t__ vm_address_t ;
typedef union cs_hash_union {int dummy; } cs_hash_union ;
typedef int uint8_t ;
struct cs_blob {int csb_flags; int csb_reconstituted; unsigned int csb_hash_pageshift; unsigned int csb_hash_pagesize; int csb_hash_pagemask; int csb_end_offset; int csb_start_offset; int csb_cdhash; TYPE_4__* csb_hashtype; scalar_t__ csb_hash_firstlevel_pagesize; int const* csb_entitlements_blob; TYPE_2__ const* csb_cd; scalar_t__ csb_mem_kaddr; int * csb_entitlements; int * csb_teamid; scalar_t__ csb_platform_path; scalar_t__ csb_platform_binary; int csb_signer_type; scalar_t__ csb_mem_offset; scalar_t__ csb_mem_size; } ;
typedef int off_t ;
typedef int hash ;
struct TYPE_8__ {int cs_digest_size; int (* cs_final ) (int *,union cs_hash_union*) ;int (* cs_update ) (union cs_hash_union*,unsigned char const*,int) ;int (* cs_init ) (union cs_hash_union*) ;} ;
struct TYPE_7__ {unsigned int pageSize; int length; int scatterOffset; int version; int codeLimit; int flags; int hashType; } ;
struct TYPE_6__ {int base; } ;
typedef TYPE_1__ SC_Scatter ;
typedef int CS_GenericBlob ;
typedef TYPE_2__ CS_CodeDirectory ;


 int CS_ALLOWED_MACHO ;
 int CS_CDHASH_LEN ;
 int CS_HASH_MAX_SIZE ;
 int CS_SIGNER_TYPE_UNKNOWN ;
 int CS_SUPPORTSSCATTER ;
 int CS_VALID ;
 int EINVAL ;
 int ENOMEM ;
 int cs_blob_free (struct cs_blob*) ;
 scalar_t__ cs_debug ;
 TYPE_4__* cs_find_md (int ) ;
 int cs_validate_csblob (int const*,size_t,TYPE_2__ const**,int const**) ;
 scalar_t__ kalloc (int) ;
 int memcpy (int ,int *,int ) ;
 int ntohl (int ) ;
 int panic (char*) ;
 int printf (char*,int) ;
 int stub1 (union cs_hash_union*) ;
 int stub2 (union cs_hash_union*,unsigned char const*,int) ;
 int stub3 (int *,union cs_hash_union*) ;

int
cs_blob_create_validated(
 vm_address_t * const addr,
 vm_size_t size,
 struct cs_blob ** const ret_blob,
    CS_CodeDirectory const ** const ret_cd)
{
 struct cs_blob *blob;
 int error = EINVAL;
 const CS_CodeDirectory *cd;
 const CS_GenericBlob *entitlements;
 union cs_hash_union mdctx;
 size_t length;

 if (ret_blob)
     *ret_blob = ((void*)0);

 blob = (struct cs_blob *) kalloc(sizeof (struct cs_blob));
 if (blob == ((void*)0)) {
  return ENOMEM;
 }


 blob->csb_mem_size = size;
 blob->csb_mem_offset = 0;
 blob->csb_mem_kaddr = *addr;
 blob->csb_flags = 0;
 blob->csb_signer_type = CS_SIGNER_TYPE_UNKNOWN;
 blob->csb_platform_binary = 0;
 blob->csb_platform_path = 0;
 blob->csb_teamid = ((void*)0);
 blob->csb_entitlements_blob = ((void*)0);
 blob->csb_entitlements = ((void*)0);
 blob->csb_reconstituted = 0;


 *addr = 0;




 length = (size_t) size;
 error = cs_validate_csblob((const uint8_t *)blob->csb_mem_kaddr,
          length, &cd, &entitlements);
 if (error) {

  if (cs_debug)
   printf("CODESIGNING: csblob invalid: %d\n", error);



  goto out;

 } else {
  const unsigned char *md_base;
  uint8_t hash[CS_HASH_MAX_SIZE];
  int md_size;

  blob->csb_cd = cd;
  blob->csb_entitlements_blob = entitlements;
  blob->csb_hashtype = cs_find_md(cd->hashType);
  if (blob->csb_hashtype == ((void*)0) || blob->csb_hashtype->cs_digest_size > sizeof(hash))
   panic("validated CodeDirectory but unsupported type");

  blob->csb_hash_pageshift = cd->pageSize;
  blob->csb_hash_pagesize = (1U << cd->pageSize);
  blob->csb_hash_pagemask = blob->csb_hash_pagesize - 1;
  blob->csb_hash_firstlevel_pagesize = 0;
  blob->csb_flags = (ntohl(cd->flags) & CS_ALLOWED_MACHO) | CS_VALID;
  blob->csb_end_offset = (((vm_offset_t)ntohl(cd->codeLimit) + blob->csb_hash_pagemask) & ~((vm_offset_t)blob->csb_hash_pagemask));
  if((ntohl(cd->version) >= CS_SUPPORTSSCATTER) && (ntohl(cd->scatterOffset))) {
   const SC_Scatter *scatter = (const SC_Scatter*)
    ((const char*)cd + ntohl(cd->scatterOffset));
   blob->csb_start_offset = ((off_t)ntohl(scatter->base)) * blob->csb_hash_pagesize;
  } else {
   blob->csb_start_offset = 0;
  }

  md_base = (const unsigned char *) cd;
  md_size = ntohl(cd->length);

  blob->csb_hashtype->cs_init(&mdctx);
  blob->csb_hashtype->cs_update(&mdctx, md_base, md_size);
  blob->csb_hashtype->cs_final(hash, &mdctx);

  memcpy(blob->csb_cdhash, hash, CS_CDHASH_LEN);
 }

    error = 0;

out:
    if (error != 0) {
        cs_blob_free(blob);
        blob = ((void*)0);
        cd = ((void*)0);
    }

    if (ret_blob != ((void*)0)) {
        *ret_blob = blob;
    }
    if (ret_cd != ((void*)0)) {
        *ret_cd = cd;
    }

    return error;
}
