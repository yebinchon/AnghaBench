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
typedef  scalar_t__ vm_page_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
struct TYPE_3__ {int /*<<< orphan*/  stop; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ pmap_test_thread_args ;
typedef  int /*<<< orphan*/ * pmap_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ PMAP_TEST_VA ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ VM_PAGE_NULL ; 
 int /*<<< orphan*/  VM_PROT_NONE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  VM_WIMG_USE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmap_disconnect_thread ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

kern_return_t
FUNC14(unsigned int num_loops)
{
	kern_return_t kr = KERN_SUCCESS;
	thread_t disconnect_thread;
	pmap_t new_pmap = FUNC4();
	if (new_pmap == NULL)
		return KERN_FAILURE;
	vm_page_t m = FUNC11();
	if (m == VM_PAGE_NULL) {
		FUNC5(new_pmap);
		return KERN_FAILURE;
	}
	ppnum_t phys_page = FUNC0(m);
	pmap_test_thread_args args = {*new_pmap, FALSE, phys_page};
	kern_return_t res = FUNC3(pmap_disconnect_thread, &args, &disconnect_thread);
	if (res) {
		FUNC5(new_pmap);
		FUNC12();
		FUNC10(m);
		FUNC13();
		return res;
	}
	FUNC9(disconnect_thread);

	while (num_loops-- != 0) {
		kr = FUNC6(new_pmap, PMAP_TEST_VA, phys_page,
		                VM_PROT_READ | VM_PROT_WRITE, VM_PROT_NONE, VM_WIMG_USE_DEFAULT, FALSE);
		FUNC1(kr == KERN_SUCCESS);
	}

	FUNC2((event_t)&args, THREAD_UNINT);
	args.stop = TRUE;
	FUNC8(THREAD_CONTINUE_NULL);

	FUNC7(new_pmap, PMAP_TEST_VA, PMAP_TEST_VA + PAGE_SIZE);
	FUNC12();
	FUNC10(m);
	FUNC13();
	FUNC5(new_pmap);
	return KERN_SUCCESS;
}