#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* os_reason_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/  osr_lock; int /*<<< orphan*/ * osr_kcd_buf; int /*<<< orphan*/  osr_kcd_descriptor; int /*<<< orphan*/  osr_bufsize; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KCDATA_BUFFER_BEGIN_OS_REASON ; 
 int /*<<< orphan*/  KCFLAG_USE_MEMCOPY ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  OS_REASON_BUFFER_MAX_SIZE ; 
 TYPE_1__* OS_REASON_NULL ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_REASON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC8(os_reason_t cur_reason, uint32_t osr_bufsize,
				boolean_t can_block)
{
	if (cur_reason == OS_REASON_NULL) {
		return EINVAL;
	}

	if (osr_bufsize > OS_REASON_BUFFER_MAX_SIZE) {
		return EINVAL;
	}

	FUNC5(&cur_reason->osr_lock);

	FUNC7(cur_reason);

	if (osr_bufsize == 0) {
		FUNC6(&cur_reason->osr_lock);
		return 0;
	}

	if (can_block) {
		cur_reason->osr_kcd_buf = FUNC3(osr_bufsize, VM_KERN_MEMORY_REASON);
		FUNC0(cur_reason->osr_kcd_buf != NULL);
	} else {
		cur_reason->osr_kcd_buf = FUNC2(osr_bufsize, VM_KERN_MEMORY_REASON);
		if (cur_reason->osr_kcd_buf == NULL) {
			FUNC6(&cur_reason->osr_lock);
			return ENOMEM;
		}
	}

	FUNC1(cur_reason->osr_kcd_buf, osr_bufsize);

	cur_reason->osr_bufsize = osr_bufsize;

	if (FUNC4(&cur_reason->osr_kcd_descriptor, (mach_vm_address_t) cur_reason->osr_kcd_buf,
					KCDATA_BUFFER_BEGIN_OS_REASON, osr_bufsize, KCFLAG_USE_MEMCOPY) != KERN_SUCCESS) {
		FUNC7(cur_reason);

		FUNC6(&cur_reason->osr_lock);
		return EIO;
	}

	FUNC6(&cur_reason->osr_lock);

	return 0;
}