#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
struct vnode {int dummy; } ;
struct linkedit_data_command {int cmdsize; scalar_t__ dataoff; scalar_t__ datasize; } ;
struct image_params {int dummy; } ;
struct cs_blob {scalar_t__ csb_base_offset; int /*<<< orphan*/  csb_end_offset; int /*<<< orphan*/  csb_platform_binary; int /*<<< orphan*/  csb_flags; int /*<<< orphan*/  csb_cpu_type; } ;
typedef  scalar_t__ off_t ;
typedef  int load_return_t ;
struct TYPE_3__ {int /*<<< orphan*/  cs_end_offset; int /*<<< orphan*/  platform_binary; int /*<<< orphan*/  csflags; } ;
typedef  TYPE_1__ load_result_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  cpu_type_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ KERN_SUCCESS ; 
 int LOAD_BADMACHO ; 
 int LOAD_FAILURE ; 
 int LOAD_IOERROR ; 
 int LOAD_NOSPACE ; 
 int LOAD_SUCCESS ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (struct vnode*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__,struct image_params*,int /*<<< orphan*/ ,struct cs_blob**) ; 
 scalar_t__ FUNC6 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 struct cs_blob* FUNC8 (struct vnode*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (struct vnode*,struct cs_blob*,struct image_params*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static load_return_t
FUNC13(
	struct linkedit_data_command	*lcp,
	struct vnode			*vp,
	off_t				macho_offset,
	off_t				macho_size,
	cpu_type_t			cputype,
	load_result_t			*result,
	struct image_params		*imgp)
{
	int		ret;
	kern_return_t	kr;
	vm_offset_t	addr;
	int		resid;
	struct cs_blob	*blob;
	int		error;
	vm_size_t	blob_size;

	addr = 0;
	blob = NULL;

	if (lcp->cmdsize != sizeof (struct linkedit_data_command) ||
	    lcp->dataoff + lcp->datasize > macho_size) {
		ret = LOAD_BADMACHO;
		goto out;
	}

	blob = FUNC8(vp, cputype, macho_offset);

	if (blob != NULL) {
		/* we already have a blob for this vnode and cputype */
		if (blob->csb_cpu_type != cputype ||
		    blob->csb_base_offset != macho_offset) {
			/* the blob has changed for this vnode: fail ! */
			ret = LOAD_BADMACHO;
			goto out;
		}

		/* It matches the blob we want here, let's verify the version */
		if (FUNC10(vp) == 0) {
			/* No need to revalidate, we're good! */
			ret = LOAD_SUCCESS;
			goto out;
		}

		/* That blob may be stale, let's revalidate. */
		error = FUNC9(vp, blob, imgp, 0);
		if (error == 0) {
			/* Revalidation succeeded, we're good! */
			ret = LOAD_SUCCESS;
			goto out;
		}

		if (error != EAGAIN) {
			FUNC4("load_code_signature: revalidation failed: %d\n", error);
			ret = LOAD_FAILURE;
			goto out;
		}

		FUNC0(error == EAGAIN);

		/*
		 * Revalidation was not possible for this blob. We just continue as if there was no blob,
		 * rereading the signature, and ubc_cs_blob_add will do the right thing.
		 */
		blob = NULL;
	}

	blob_size = lcp->datasize;
	kr = FUNC6(&addr, &blob_size);
	if (kr != KERN_SUCCESS) {
		ret = LOAD_NOSPACE;
		goto out;
	}
	
	resid = 0;
	error = FUNC12(UIO_READ,
			vp,
			(caddr_t) addr,
			lcp->datasize,
			macho_offset + lcp->dataoff,
			UIO_SYSSPACE,
			0,
			FUNC2(),
			&resid,
			FUNC1());
	if (error || resid != 0) {
		ret = LOAD_IOERROR;
		goto out;
	}

	if (FUNC5(vp,
			    cputype,
			    macho_offset,
			    &addr,
			    lcp->datasize,
			    imgp,
			    0,
			    &blob)) {
		if (addr) {
			FUNC7(addr, blob_size);
		}
		ret = LOAD_FAILURE;
		goto out;
	} else {
		/* ubc_cs_blob_add() has consumed "addr" */
		addr = 0;
	}

#if CHECK_CS_VALIDATION_BITMAP
	ubc_cs_validation_bitmap_allocate( vp );
#endif
		
	ret = LOAD_SUCCESS;
out:
	if (ret == LOAD_SUCCESS) {
		if (blob == NULL)
			FUNC3("success, but no blob!");

		result->csflags |= blob->csb_flags;
		result->platform_binary = blob->csb_platform_binary;
		result->cs_end_offset = blob->csb_end_offset;
	}
	if (addr != 0) {
		FUNC7(addr, blob_size);
		addr = 0;
	}

	return ret;
}