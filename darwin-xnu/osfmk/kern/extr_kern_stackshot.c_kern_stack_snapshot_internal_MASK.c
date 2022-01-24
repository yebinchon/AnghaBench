#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct TYPE_2__ {scalar_t__ sc_out_buffer_addr; scalar_t__ sc_out_size_addr; int sc_pid; int sc_flags; scalar_t__ sc_delta_timestamp; int sc_size; } ;
typedef  TYPE_1__ stackshot_config_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  int kern_return_t ;
typedef  int /*<<< orphan*/ * kcdata_descriptor_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int KCDATA_BUFFER_BEGIN_DELTA_STACKSHOT ; 
 int KCDATA_BUFFER_BEGIN_STACKSHOT ; 
 int KCFLAG_NO_AUTO_ENDBUFFER ; 
 int KCFLAG_USE_MEMCOPY ; 
 int KERN_ABORTED ; 
 int KERN_INSUFFICIENT_BUFFER_SIZE ; 
 int KERN_INVALID_ARGUMENT ; 
 int KERN_MEMORY_PRESENT ; 
 int KERN_NOT_IN_SET ; 
 int KERN_NOT_SUPPORTED ; 
 int KERN_NO_ACCESS ; 
 int KERN_RESOURCE_SHORTAGE ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  KF_STACKSHOT_OVRD ; 
 int /*<<< orphan*/  PAGE_MASK ; 
 int STACKSHOT_COLLECT_DELTA_SNAPSHOT ; 
#define  STACKSHOT_CONFIG_TYPE 128 
 int STACKSHOT_FROM_PANIC ; 
 int STACKSHOT_GET_BOOT_PROFILE ; 
 int STACKSHOT_INSTRS_CYCLES ; 
 int STACKSHOT_KCDATA_FORMAT ; 
 int STACKSHOT_RETRIEVE_EXISTING_BUFFER ; 
 int STACKSHOT_SAVE_IN_KERNEL_BUFFER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int STACKSHOT_TRYLOCK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_DIAG ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void**,int*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,void*,int,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_map ; 
 void* kernel_stackshot_buf ; 
 int kernel_stackshot_buf_size ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 () ; 
 int max_tracebuf_size ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  mt_core_supported ; 
 scalar_t__* stackshot_duration_outer ; 
 int /*<<< orphan*/ * stackshot_kcdata_p ; 
 int FUNC15 (void*,int,scalar_t__,scalar_t__) ; 
 int FUNC16 () ; 

kern_return_t
FUNC17(int stackshot_config_version, void *stackshot_config, size_t stackshot_config_size, boolean_t stackshot_from_user)
{
	int error = 0;
	boolean_t prev_interrupt_state;
	uint32_t bytes_traced = 0;
	uint32_t stackshotbuf_size = 0;
	void * stackshotbuf = NULL;
	kcdata_descriptor_t kcdata_p = NULL;

	void * buf_to_free = NULL;
	int size_to_free = 0;

	/* Parsed arguments */
	uint64_t		out_buffer_addr;
	uint64_t		out_size_addr;
	int			pid = -1;
	uint32_t		flags;
	uint64_t		since_timestamp;
	uint32_t		size_hint = 0;

	if(stackshot_config == NULL) {
		return 	KERN_INVALID_ARGUMENT;
	}
#if DEVELOPMENT || DEBUG
	/* TBD: ask stackshot clients to avoid issuing stackshots in this
	 * configuration in lieu of the kernel feature override.
	 */
	if (kern_feature_override(KF_STACKSHOT_OVRD) == TRUE) {
		return KERN_NOT_SUPPORTED;
	}
#endif

	switch (stackshot_config_version) {
		case STACKSHOT_CONFIG_TYPE:
			if (stackshot_config_size != sizeof(stackshot_config_t)) {
				return KERN_INVALID_ARGUMENT;
			}
			stackshot_config_t *config = (stackshot_config_t *) stackshot_config;
			out_buffer_addr = config->sc_out_buffer_addr;
			out_size_addr = config->sc_out_size_addr;
			pid = config->sc_pid;
			flags = config->sc_flags;
			since_timestamp = config->sc_delta_timestamp;
			if (config->sc_size <= max_tracebuf_size) {
				size_hint = config->sc_size;
			}
			break;
		default:
			return KERN_NOT_SUPPORTED;
	    }

	    /*
	     * Currently saving a kernel buffer and trylock are only supported from the
	     * internal/KEXT API.
	     */
	    if (stackshot_from_user) {
		    if (flags & (STACKSHOT_TRYLOCK | STACKSHOT_SAVE_IN_KERNEL_BUFFER | STACKSHOT_FROM_PANIC)) {
			    return KERN_NO_ACCESS;
		    }
	    } else {
		if (!(flags & STACKSHOT_SAVE_IN_KERNEL_BUFFER)) {
			return KERN_NOT_SUPPORTED;
		}
	}

	if (!((flags & STACKSHOT_KCDATA_FORMAT) || (flags & STACKSHOT_RETRIEVE_EXISTING_BUFFER))) {
		return KERN_NOT_SUPPORTED;
	}

	/*
	 * If we're not saving the buffer in the kernel pointer, we need a place to copy into.
	 */
	if ((!out_buffer_addr || !out_size_addr) && !(flags & STACKSHOT_SAVE_IN_KERNEL_BUFFER)) {
		return KERN_INVALID_ARGUMENT;
	}

	if (since_timestamp != 0 && ((flags & STACKSHOT_COLLECT_DELTA_SNAPSHOT) == 0)) {
		return KERN_INVALID_ARGUMENT;
	}

#if MONOTONIC
	if (!mt_core_supported) {
		flags &= ~STACKSHOT_INSTRS_CYCLES;
	}
#else /* MONOTONIC */
	flags &= ~STACKSHOT_INSTRS_CYCLES;
#endif /* !MONOTONIC */

	FUNC0();

	if (flags & STACKSHOT_SAVE_IN_KERNEL_BUFFER) {
		/*
		 * Don't overwrite an existing stackshot
		 */
		if (kernel_stackshot_buf != NULL) {
			error = KERN_MEMORY_PRESENT;
			goto error_exit;
		}
	} else if (flags & STACKSHOT_RETRIEVE_EXISTING_BUFFER) {
		if ((kernel_stackshot_buf == NULL) || (kernel_stackshot_buf_size <= 0)) {
			error = KERN_NOT_IN_SET;
			goto error_exit;
		}
		error = FUNC15(kernel_stackshot_buf, kernel_stackshot_buf_size,
						out_buffer_addr, out_size_addr);
		/*
		 * If we successfully remapped the buffer into the user's address space, we 
		 * set buf_to_free and size_to_free so the prior kernel mapping will be removed
		 * and then clear the kernel stackshot pointer and associated size.
		 */
		if (error == KERN_SUCCESS) {
			buf_to_free = kernel_stackshot_buf;
			size_to_free = (int) FUNC2(kernel_stackshot_buf_size, PAGE_MASK);
			kernel_stackshot_buf = NULL;
			kernel_stackshot_buf_size = 0;
		}
		
		goto error_exit;
	}

	if (flags & STACKSHOT_GET_BOOT_PROFILE) {
		void *bootprofile = NULL;
		uint32_t len = 0;
#if CONFIG_TELEMETRY
		bootprofile_get(&bootprofile, &len);
#endif
		if (!bootprofile || !len) {
			error = KERN_NOT_IN_SET;
			goto error_exit;
		}
		error = FUNC15(bootprofile, len, out_buffer_addr, out_size_addr);
		goto error_exit;
	}

	stackshotbuf_size = FUNC5(size_hint);

	for (; stackshotbuf_size <= max_tracebuf_size; stackshotbuf_size <<= 1) {
		if (FUNC11(kernel_map, (vm_offset_t *)&stackshotbuf, stackshotbuf_size, VM_KERN_MEMORY_DIAG) != KERN_SUCCESS) {
			error = KERN_RESOURCE_SHORTAGE;
			goto error_exit;
		}


		uint32_t hdr_tag = (flags & STACKSHOT_COLLECT_DELTA_SNAPSHOT) ? KCDATA_BUFFER_BEGIN_DELTA_STACKSHOT : KCDATA_BUFFER_BEGIN_STACKSHOT;
		kcdata_p = FUNC6((mach_vm_address_t)stackshotbuf, hdr_tag, stackshotbuf_size,
			                                    KCFLAG_USE_MEMCOPY | KCFLAG_NO_AUTO_ENDBUFFER);

		stackshot_duration_outer = NULL;
		uint64_t time_start      = FUNC13();

		/*
		 * Disable interrupts and save the current interrupt state.
		 */
		prev_interrupt_state = FUNC14(FALSE);

		/*
		 * Load stackshot parameters.
		 */
		FUNC8(pid, stackshotbuf, stackshotbuf_size, flags, kcdata_p, since_timestamp);

		error = FUNC16();

		FUNC14(prev_interrupt_state);

		/* record the duration that interupts were disabled */

		uint64_t time_end = FUNC13();
		if (stackshot_duration_outer) {
			*stackshot_duration_outer = time_end - time_start;
		}

		if (error != KERN_SUCCESS) {
			if (kcdata_p != NULL) {
				FUNC7(kcdata_p);
				kcdata_p = NULL;
				stackshot_kcdata_p = NULL;
			}
			FUNC12(kernel_map, (vm_offset_t)stackshotbuf, stackshotbuf_size);
			stackshotbuf = NULL;
			if (error == KERN_INSUFFICIENT_BUFFER_SIZE) {
				/*
				 * If we didn't allocate a big enough buffer, deallocate and try again.
				 */
				continue;
			} else {
				goto error_exit;
			}
		}

		bytes_traced = FUNC9();

		if (bytes_traced <= 0) {
			error = KERN_ABORTED;
			goto error_exit;
		}

		FUNC3(bytes_traced <= stackshotbuf_size);
		if (!(flags & STACKSHOT_SAVE_IN_KERNEL_BUFFER)) {
			error = FUNC15(stackshotbuf, bytes_traced, out_buffer_addr, out_size_addr);
			goto error_exit;
		}

		/*
		 * Save the stackshot in the kernel buffer.
		 */
		kernel_stackshot_buf = stackshotbuf;
		kernel_stackshot_buf_size =  bytes_traced;
		/*
		 * Figure out if we didn't use all the pages in the buffer. If so, we set buf_to_free to the beginning of
		 * the next page after the end of the stackshot in the buffer so that the kmem_free clips the buffer and
		 * update size_to_free for kmem_free accordingly.
		 */
		size_to_free = stackshotbuf_size - (int) FUNC2(bytes_traced, PAGE_MASK);

		FUNC3(size_to_free >= 0);

		if (size_to_free != 0) {
			buf_to_free = (void *)((uint64_t)stackshotbuf + stackshotbuf_size - size_to_free);
		}

		stackshotbuf = NULL;
		stackshotbuf_size = 0;
		goto error_exit;
	}

	if (stackshotbuf_size > max_tracebuf_size) {
		error = KERN_RESOURCE_SHORTAGE;
	}

error_exit:
	if (kcdata_p != NULL) {
		FUNC7(kcdata_p);
		kcdata_p = NULL;
		stackshot_kcdata_p = NULL;
	}

	if (stackshotbuf != NULL) {
		FUNC12(kernel_map, (vm_offset_t)stackshotbuf, stackshotbuf_size);
	}
	if (buf_to_free  != NULL) {
		FUNC12(kernel_map, (vm_offset_t)buf_to_free, size_to_free);
	}
	FUNC1();
	return error;
}