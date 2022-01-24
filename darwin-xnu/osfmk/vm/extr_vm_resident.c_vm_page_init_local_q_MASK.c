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
struct vpl {scalar_t__ vpl_external_count; scalar_t__ vpl_internal_count; scalar_t__ vpl_count; int /*<<< orphan*/  vpl_queue; } ;
struct TYPE_2__ {struct vpl vpl; } ;
struct vplq {TYPE_1__ vpl_un; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int VM_PACKED_POINTER_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC1 (struct vpl*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  vm_page_lck_attr ; 
 int /*<<< orphan*/  vm_page_lck_grp_local ; 
 struct vplq* vm_page_local_q ; 
 unsigned int vm_page_local_q_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5()
{
	unsigned int		num_cpus;
	unsigned int		i;
	struct vplq     	*t_local_q;

	num_cpus = FUNC3();

	/*
	 * no point in this for a uni-processor system
	 */
	if (num_cpus >= 2) {
#if KASAN
		/* KASAN breaks the expectation of a size-aligned object by adding a
		 * redzone, so explicitly align. */
		t_local_q = (struct vplq *)kalloc(num_cpus * sizeof(struct vplq) + VM_PACKED_POINTER_ALIGNMENT);
		t_local_q = (void *)(((uintptr_t)t_local_q + (VM_PACKED_POINTER_ALIGNMENT-1)) & ~(VM_PACKED_POINTER_ALIGNMENT-1));
#else
		/* round the size up to the nearest power of two */
		t_local_q = (struct vplq *)FUNC2(FUNC0(num_cpus * sizeof(struct vplq)));
#endif

		for (i = 0; i < num_cpus; i++) {
			struct vpl	*lq;

			lq = &t_local_q[i].vpl_un.vpl;
			FUNC1(lq, &vm_page_lck_grp_local, &vm_page_lck_attr);
			FUNC4(&lq->vpl_queue);
			lq->vpl_count = 0;
			lq->vpl_internal_count = 0;
			lq->vpl_external_count = 0;
		}
		vm_page_local_q_count = num_cpus;

		vm_page_local_q = (struct vplq *)t_local_q;
	}
}