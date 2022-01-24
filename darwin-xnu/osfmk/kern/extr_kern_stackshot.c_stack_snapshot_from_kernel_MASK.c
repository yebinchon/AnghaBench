#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct kcdata_descriptor {int dummy; } ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int KCDATA_BUFFER_BEGIN_DELTA_STACKSHOT ; 
 int KCDATA_BUFFER_BEGIN_STACKSHOT ; 
 int KCFLAG_NO_AUTO_ENDBUFFER ; 
 int KCFLAG_USE_MEMCOPY ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_LOCK_OWNED ; 
 scalar_t__ KERN_NOT_SUPPORTED ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  KF_STACKSHOT_OVRD ; 
 int STACKSHOT_COLLECT_DELTA_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int STACKSHOT_TRYLOCK ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC3 (struct kcdata_descriptor*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,void*,int,int,struct kcdata_descriptor*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int max_tracebuf_size ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stackshot_kcdata_p ; 
 scalar_t__ FUNC8 () ; 

kern_return_t
FUNC9(int pid, void *buf, uint32_t size, uint32_t flags, uint64_t delta_since_timestamp, unsigned *bytes_traced)
{
	kern_return_t error = KERN_SUCCESS;
	boolean_t istate;

#if DEVELOPMENT || DEBUG
	if (kern_feature_override(KF_STACKSHOT_OVRD) == TRUE) {
		error = KERN_NOT_SUPPORTED;
		goto out;
	}
#endif
	if ((buf == NULL) || (size <= 0) || (bytes_traced == NULL)) {
		return KERN_INVALID_ARGUMENT;
	}

	/* cap in individual stackshot to max_tracebuf_size */
	if (size > max_tracebuf_size) {
		size = max_tracebuf_size;
	}

	/* Serialize tracing */
	if (flags & STACKSHOT_TRYLOCK) {
		if (!FUNC1()) {
			return KERN_LOCK_OWNED;
		}
	} else {
		FUNC0();
	}

	struct kcdata_descriptor kcdata;
	uint32_t hdr_tag = (flags & STACKSHOT_COLLECT_DELTA_SNAPSHOT) ?
		KCDATA_BUFFER_BEGIN_DELTA_STACKSHOT : KCDATA_BUFFER_BEGIN_STACKSHOT;

	error = FUNC3(&kcdata, (mach_vm_address_t)buf, hdr_tag, size,
									  KCFLAG_USE_MEMCOPY | KCFLAG_NO_AUTO_ENDBUFFER);
	if (error) {
		goto out;
	}

	istate = FUNC7(FALSE);

	/* Preload trace parameters*/
	FUNC4(pid, buf, size, flags, &kcdata, delta_since_timestamp);

	/*
	 * Trap to the debugger to obtain a coherent stack snapshot; this populates
	 * the trace buffer
	 */
	error = FUNC8();

	FUNC7(istate);

	*bytes_traced = FUNC5();

out:
	stackshot_kcdata_p = NULL;
	FUNC2();
	return error;
}