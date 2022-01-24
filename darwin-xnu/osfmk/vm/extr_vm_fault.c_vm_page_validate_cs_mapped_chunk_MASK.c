#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
struct vnode {int dummy; } ;
typedef  int /*<<< orphan*/ * memory_object_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_8__ {int code_signed; int pager_ready; int paging_in_progress; scalar_t__ paging_offset; int /*<<< orphan*/ * pager; int /*<<< orphan*/  internal; scalar_t__ terminating; int /*<<< orphan*/  alive; } ;
struct TYPE_7__ {int vmp_busy; scalar_t__ vmp_offset; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ TRUE ; 
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct vnode*,int /*<<< orphan*/ *,scalar_t__,void const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct vnode* FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(
	vm_page_t	page,
	const void 	*kaddr,
	vm_offset_t	chunk_offset,
	vm_size_t	chunk_size,
	boolean_t	*validated_p,
	unsigned	*tainted_p)
{
	vm_object_t		object;
	vm_object_offset_t	offset, offset_in_page;
	memory_object_t		pager;
	struct vnode		*vnode;
	boolean_t		validated;
	unsigned		tainted;

	*validated_p = FALSE;
	*tainted_p = 0;

	FUNC1(page->vmp_busy);
	object = FUNC0(page);
	FUNC3(object);

	FUNC1(object->code_signed);
	offset = page->vmp_offset;

	if (!object->alive || object->terminating || object->pager == NULL) {
		/*
		 * The object is terminating and we don't have its pager
		 * so we can't validate the data...
		 */
		return;
	}
	/*
	 * Since we get here to validate a page that was brought in by
	 * the pager, we know that this pager is all setup and ready
	 * by now.
	 */
	FUNC1(!object->internal);
	FUNC1(object->pager != NULL);
	FUNC1(object->pager_ready);

	pager = object->pager;
	FUNC1(object->paging_in_progress);
	vnode = FUNC4(pager);

	/* verify the signature for this chunk */
	offset_in_page = chunk_offset;
	FUNC1(offset_in_page < PAGE_SIZE);

	tainted = 0;
	validated = FUNC2(vnode,
				      pager,
				      (object->paging_offset +
				       offset +
				       offset_in_page),
				      (const void *)((const char *)kaddr
						    + offset_in_page),
				      chunk_size,
				      &tainted);
	if (validated) {
		*validated_p = TRUE;
	}
	if (tainted) {
		*tainted_p = tainted;
	}
}