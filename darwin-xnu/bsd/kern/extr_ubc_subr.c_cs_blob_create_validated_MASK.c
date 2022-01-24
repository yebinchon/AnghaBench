#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  int vm_offset_t ;
typedef  scalar_t__ vm_address_t ;
typedef  union cs_hash_union {int dummy; } cs_hash_union ;
typedef  int /*<<< orphan*/  uint8_t ;
struct cs_blob {int csb_flags; int csb_reconstituted; unsigned int csb_hash_pageshift; unsigned int csb_hash_pagesize; int csb_hash_pagemask; int csb_end_offset; int csb_start_offset; int /*<<< orphan*/  csb_cdhash; TYPE_4__* csb_hashtype; scalar_t__ csb_hash_firstlevel_pagesize; int /*<<< orphan*/  const* csb_entitlements_blob; TYPE_2__ const* csb_cd; scalar_t__ csb_mem_kaddr; int /*<<< orphan*/ * csb_entitlements; int /*<<< orphan*/ * csb_teamid; scalar_t__ csb_platform_path; scalar_t__ csb_platform_binary; int /*<<< orphan*/  csb_signer_type; scalar_t__ csb_mem_offset; scalar_t__ csb_mem_size; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  hash ;
struct TYPE_8__ {int cs_digest_size; int /*<<< orphan*/  (* cs_final ) (int /*<<< orphan*/ *,union cs_hash_union*) ;int /*<<< orphan*/  (* cs_update ) (union cs_hash_union*,unsigned char const*,int) ;int /*<<< orphan*/  (* cs_init ) (union cs_hash_union*) ;} ;
struct TYPE_7__ {unsigned int pageSize; int /*<<< orphan*/  length; int /*<<< orphan*/  scatterOffset; int /*<<< orphan*/  version; int /*<<< orphan*/  codeLimit; int /*<<< orphan*/  flags; int /*<<< orphan*/  hashType; } ;
struct TYPE_6__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ SC_Scatter ;
typedef  int /*<<< orphan*/  CS_GenericBlob ;
typedef  TYPE_2__ CS_CodeDirectory ;

/* Variables and functions */
 int CS_ALLOWED_MACHO ; 
 int /*<<< orphan*/  CS_CDHASH_LEN ; 
 int CS_HASH_MAX_SIZE ; 
 int /*<<< orphan*/  CS_SIGNER_TYPE_UNKNOWN ; 
 int CS_SUPPORTSSCATTER ; 
 int CS_VALID ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cs_blob*) ; 
 scalar_t__ cs_debug ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*,size_t,TYPE_2__ const**,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (union cs_hash_union*) ; 
 int /*<<< orphan*/  FUNC9 (union cs_hash_union*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,union cs_hash_union*) ; 

int
FUNC11(
	vm_address_t * const            addr,
	vm_size_t                       size,
	struct cs_blob ** const         ret_blob,
    CS_CodeDirectory const ** const	ret_cd)
{
	struct cs_blob		*blob;
	int		error = EINVAL;
	const CS_CodeDirectory *cd;
	const CS_GenericBlob *entitlements;
	union cs_hash_union	mdctx;
	size_t			length;

	if (ret_blob)
	    *ret_blob = NULL;

	blob = (struct cs_blob *) FUNC3(sizeof (struct cs_blob));
	if (blob == NULL) {
		return ENOMEM;
	}

	/* fill in the new blob */
	blob->csb_mem_size = size;
	blob->csb_mem_offset = 0;
	blob->csb_mem_kaddr = *addr;
	blob->csb_flags = 0;
	blob->csb_signer_type = CS_SIGNER_TYPE_UNKNOWN;
	blob->csb_platform_binary = 0;
	blob->csb_platform_path = 0;
	blob->csb_teamid = NULL;
	blob->csb_entitlements_blob = NULL;
	blob->csb_entitlements = NULL;
	blob->csb_reconstituted = false;

	/* Transfer ownership. Even on error, this function will deallocate */
	*addr = 0;

	/*
	 * Validate the blob's contents
	 */
	length = (size_t) size;
	error = FUNC2((const uint8_t *)blob->csb_mem_kaddr,
							   length, &cd, &entitlements);
	if (error) {

		if (cs_debug)
			FUNC7("CODESIGNING: csblob invalid: %d\n", error);
		/*
		 * The vnode checker can't make the rest of this function
		 * succeed if csblob validation failed, so bail */
		goto out;

	} else {
		const unsigned char *md_base;
		uint8_t hash[CS_HASH_MAX_SIZE];
		int md_size;

		blob->csb_cd = cd;
		blob->csb_entitlements_blob = entitlements; /* may be NULL, not yet validated */
		blob->csb_hashtype = FUNC1(cd->hashType);
		if (blob->csb_hashtype == NULL || blob->csb_hashtype->cs_digest_size > sizeof(hash))
			FUNC6("validated CodeDirectory but unsupported type");

		blob->csb_hash_pageshift = cd->pageSize;
		blob->csb_hash_pagesize = (1U << cd->pageSize);
		blob->csb_hash_pagemask = blob->csb_hash_pagesize - 1;
		blob->csb_hash_firstlevel_pagesize = 0;
		blob->csb_flags = (FUNC5(cd->flags) & CS_ALLOWED_MACHO) | CS_VALID;
		blob->csb_end_offset = (((vm_offset_t)FUNC5(cd->codeLimit) + blob->csb_hash_pagemask) & ~((vm_offset_t)blob->csb_hash_pagemask));
		if((FUNC5(cd->version) >= CS_SUPPORTSSCATTER) && (FUNC5(cd->scatterOffset))) {
			const SC_Scatter *scatter = (const SC_Scatter*)
				((const char*)cd + FUNC5(cd->scatterOffset));
			blob->csb_start_offset = ((off_t)FUNC5(scatter->base)) * blob->csb_hash_pagesize;
		} else {
			blob->csb_start_offset = 0;
		}
		/* compute the blob's cdhash */
		md_base = (const unsigned char *) cd;
		md_size = FUNC5(cd->length);

		blob->csb_hashtype->cs_init(&mdctx);
		blob->csb_hashtype->cs_update(&mdctx, md_base, md_size);
		blob->csb_hashtype->cs_final(hash, &mdctx);

		FUNC4(blob->csb_cdhash, hash, CS_CDHASH_LEN);
	}

    error = 0;

out:
    if (error != 0) {
        FUNC0(blob);
        blob = NULL;
        cd = NULL;
    }

    if (ret_blob != NULL) {
        *ret_blob = blob;
    }
    if (ret_cd != NULL) {
        *ret_cd = cd;
    }

    return error;
}