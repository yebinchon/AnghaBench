#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct vnode {TYPE_1__* v_ubcinfo; } ;
struct image_params {int dummy; } ;
struct cs_blob {size_t csb_mem_size; unsigned int csb_flags; unsigned int csb_signer_type; scalar_t__ csb_reconstituted; scalar_t__ csb_mem_kaddr; } ;
struct TYPE_7__ {int p_pid; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {scalar_t__ cs_add_gen; } ;
typedef  int /*<<< orphan*/  CS_GenericBlob ;
typedef  TYPE_2__ CS_CodeDirectory ;

/* Variables and functions */
 unsigned int CS_ALLOWED_MACHO ; 
 unsigned int CS_SIGNER_TYPE_UNKNOWN ; 
 unsigned int CS_VALID ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ cs_blob_generation_count ; 
 scalar_t__ cs_debug ; 
 int FUNC2 (int /*<<< orphan*/  const*,size_t,TYPE_2__ const**,int /*<<< orphan*/  const**) ; 
 TYPE_3__* FUNC3 () ; 
 int FUNC4 (struct vnode*,struct cs_blob*,struct image_params*,unsigned int*,unsigned int*,int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 

int
FUNC9(
	struct vnode	*vp,
	struct cs_blob *blob,
	struct image_params *imgp,
	int flags
	)
{
	int error = 0;
	const CS_CodeDirectory *cd = NULL;
	const CS_GenericBlob *entitlements = NULL;
	size_t size;
	FUNC1(vp != NULL);
	FUNC1(blob != NULL);

	size = blob->csb_mem_size;
	error = FUNC2((const uint8_t *)blob->csb_mem_kaddr,
							   size, &cd, &entitlements);
	if (error) {
		if (cs_debug) {
			FUNC6("CODESIGNING: csblob invalid: %d\n", error);
		}
		goto out;
	}

    unsigned int cs_flags = (FUNC5(cd->flags) & CS_ALLOWED_MACHO) | CS_VALID;
    unsigned int signer_type = CS_SIGNER_TYPE_UNKNOWN;

	if (blob->csb_reconstituted) {
		/*
		 * Code signatures that have been modified after validation
		 * cannot be revalidated inline from their in-memory blob.
		 *
		 * That's okay, though, because the only path left that relies
		 * on revalidation of existing in-memory blobs is the legacy
		 * detached signature database path, which only exists on macOS,
		 * which does not do reconstitution of any kind.
		 */
		if (cs_debug) {
			FUNC6("CODESIGNING: revalidate: not inline revalidating reconstituted signature.\n");
		}

		/*
		 * EAGAIN tells the caller that they may reread the code
		 * signature and try attaching it again, which is the same
		 * thing they would do if there was no cs_blob yet in the
		 * first place.
		 *
		 * Conveniently, after ubc_cs_blob_add did a successful
		 * validation, it will detect that a matching cs_blob (cdhash,
		 * offset, arch etc.) already exists, and return success
		 * without re-adding a cs_blob to the vnode.
		 */
		return EAGAIN;
	}

	/* callout to mac_vnode_check_signature */
#if CONFIG_MACF
	error = mac_vnode_check_signature(vp, blob, imgp, &cs_flags, &signer_type, flags);
	if (cs_debug && error) {
			printf("revalidate: check_signature[pid: %d], error = %d\n", current_proc()->p_pid, error);
	}
#else
	(void)flags;
	(void)signer_type;
#endif

	/* update generation number if success */
	FUNC7(vp);
    blob->csb_flags = cs_flags;
	blob->csb_signer_type = signer_type;
	if (FUNC0(vp)) {
		if (error == 0)
			vp->v_ubcinfo->cs_add_gen = cs_blob_generation_count;
		else
			vp->v_ubcinfo->cs_add_gen = 0;
	}

	FUNC8(vp);

out:
	return error;
}