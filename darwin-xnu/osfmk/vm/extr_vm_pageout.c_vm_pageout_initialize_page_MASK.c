#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
typedef  scalar_t__ memory_object_t ;
struct TYPE_15__ {int internal; scalar_t__ pager; scalar_t__ paging_offset; } ;
struct TYPE_14__ {int vmp_busy; int vmp_dirty; int /*<<< orphan*/  vmp_precious; scalar_t__ vmp_restart; scalar_t__ vmp_error; scalar_t__ vmp_absent; scalar_t__ vmp_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MEMORY_OBJECT_NULL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int VM_CONFIG_COMPRESSOR_IS_PRESENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPR_VM_PAGEOUT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

void
FUNC13(
	vm_page_t	m)
{
	vm_object_t		object;
	vm_object_offset_t	paging_offset;
	memory_object_t		pager;

	FUNC4(XPR_VM_PAGEOUT,
		"vm_pageout_initialize_page, page 0x%X\n",
		m, 0, 0, 0, 0);

	FUNC5(VM_CONFIG_COMPRESSOR_IS_PRESENT);

	object = FUNC3(m);

	FUNC5(m->vmp_busy);
	FUNC5(object->internal);

	/*
	 *	Verify that we really want to clean this page
	 */
	FUNC5(!m->vmp_absent);
	FUNC5(!m->vmp_error);
	FUNC5(m->vmp_dirty);

	/*
	 *	Create a paging reference to let us play with the object.
	 */
	paging_offset = m->vmp_offset + object->paging_offset;

	if (m->vmp_absent || m->vmp_error || m->vmp_restart || (!m->vmp_dirty && !m->vmp_precious)) {
		FUNC7("reservation without pageout?"); /* alan */

		FUNC1(m);
		FUNC12(object);

		return;
	}

	/*
	 * If there's no pager, then we can't clean the page.  This should
	 * never happen since this should be a copy object and therefore not
	 * an external object, so the pager should always be there.
	 */

	pager = object->pager;

	if (pager == MEMORY_OBJECT_NULL) {
		FUNC7("missing pager for copy object");

		FUNC1(m);
		return;
	}

	/*
	 * set the page for future call to vm_fault_list_request
	 */
	FUNC8(FUNC2(m));
	FUNC0(m, FALSE);

	/*
	 * keep the object from collapsing or terminating
	 */
	FUNC10(object);
	FUNC12(object);

	/*
	 *	Write the data to its pager.
	 *	Note that the data is passed by naming the new object,
	 *	not a virtual address; the pager interface has been
	 *	manipulated to use the "internal memory" data type.
	 *	[The object reference from its allocation is donated
	 *	to the eventual recipient.]
	 */
	FUNC6(pager, paging_offset, PAGE_SIZE);

	FUNC9(object);
	FUNC11(object);
}