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
typedef  scalar_t__ vm_size_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int copyio_type_t ;

/* Variables and functions */
#define  COPYIO_IN 131 
#define  COPYIO_INSTR 130 
#define  COPYIO_IN_WORD 129 
#define  COPYIO_OUT 128 
 int EFAULT ; 
 int EINVAL ; 
 uintptr_t TBI_MASK ; 
 int /*<<< orphan*/  FUNC0 (uintptr_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,char*,scalar_t__) ; 
 int FUNC5 (char const*,char*,scalar_t__,scalar_t__*) ; 
 int FUNC6 (char const*,char*,scalar_t__) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  copyio_zalloc_check ; 
 int /*<<< orphan*/  FUNC8 (char*,void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(copyio_type_t copytype, const char *src, char *dst,
	   vm_size_t nbytes, vm_size_t *lencopied)
{
	int result = 0;
	vm_size_t bytes_copied = 0;
	vm_size_t kernel_buf_size = 0;
	void * kernel_addr = NULL;

	/* Reject TBI addresses */
	if (copytype == COPYIO_OUT) {
		if ((uintptr_t)dst & TBI_MASK)
			return EINVAL;
	} else {
		if ((uintptr_t)src & TBI_MASK)
			return EINVAL;
	}

	if (FUNC3(copyio_zalloc_check)) {
		if (copytype == COPYIO_IN || copytype == COPYIO_INSTR || copytype == COPYIO_IN_WORD) {
			kernel_addr = (void*)dst;
		} else if (copytype == COPYIO_OUT) {
			kernel_addr = (void*)(uintptr_t)src;
		}
		if (kernel_addr)
			kernel_buf_size = FUNC11(kernel_addr, NULL);
		if (FUNC2(kernel_buf_size && kernel_buf_size < nbytes))
			FUNC8("copyio: kernel buffer %p has size %lu < nbytes %lu", kernel_addr, kernel_buf_size, nbytes);
	}

#if KASAN
	/* For user copies, asan-check the kernel-side buffer */
	if (copytype == COPYIO_IN || copytype == COPYIO_INSTR || copytype == COPYIO_IN_WORD) {
		__asan_storeN((uintptr_t)dst, nbytes);
	} else if (copytype == COPYIO_OUT) {
		__asan_loadN((uintptr_t)src, nbytes);
	}
#endif

	FUNC10();

	/* Select copy routines based on direction:
	 *   COPYIO_IN - Use unprivileged loads to read from user address
	 *   COPYIO_OUT - Use unprivleged stores to write to user address
	 */

	switch (copytype) {
	case COPYIO_IN:
		result = FUNC4(src, dst, nbytes);
		break;
	case COPYIO_INSTR:
		result = FUNC5(src, dst, nbytes, &bytes_copied);
		if (result != EFAULT) {
			*lencopied = bytes_copied;
		}
		break;
	case COPYIO_IN_WORD:
		result = FUNC7(src, (uint64_t *)(uintptr_t)dst, nbytes);
		break;
	case COPYIO_OUT:
		result = FUNC6(src, dst, nbytes);
		break;
	default:
		result = EINVAL;
	}

	FUNC9();
	return result;
}