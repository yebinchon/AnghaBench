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
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct vnode {int dummy; } ;
typedef  int /*<<< orphan*/ * memory_object_t ;
typedef  scalar_t__ memory_object_offset_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_8__ {int code_signed; int pager_ready; int paging_in_progress; int /*<<< orphan*/ * pager; scalar_t__ paging_offset; int /*<<< orphan*/  internal; } ;
struct TYPE_7__ {int vmp_busy; void* vmp_cs_tainted; void* vmp_cs_validated; void* vmp_cs_nx; scalar_t__ vmp_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_BITMAP_SET ; 
 unsigned int CS_VALIDATE_NX ; 
 unsigned int CS_VALIDATE_TAINTED ; 
 int /*<<< orphan*/  PAGE_SIZE_64 ; 
 void* TRUE ; 
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct vnode*,int /*<<< orphan*/ *,scalar_t__,void const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  vm_cs_validates ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 struct vnode* FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(
	vm_page_t	page,
	const void 	*kaddr)
{
	vm_object_t		object;
	memory_object_offset_t	mo_offset;
	memory_object_t		pager;
	struct vnode		*vnode;
	boolean_t		validated;
	unsigned		tainted;

	FUNC1(page->vmp_busy);
	object = FUNC0(page);
	FUNC3(object);

	vm_cs_validates++;

	/*
	 * Since we get here to validate a page that was brought in by
	 * the pager, we know that this pager is all setup and ready
	 * by now.
	 */
	FUNC1(object->code_signed);
	FUNC1(!object->internal);
	FUNC1(object->pager != NULL);
	FUNC1(object->pager_ready);

	pager = object->pager;
	FUNC1(object->paging_in_progress);
	vnode = FUNC5(pager);
	mo_offset = page->vmp_offset + object->paging_offset;

	/* verify the SHA1 hash for this page */
	tainted = 0;
	validated = FUNC2(vnode,
				      pager,
				      mo_offset,
				      (const void *)((const char *)kaddr),
				      PAGE_SIZE_64,
				      &tainted);

	if (tainted & CS_VALIDATE_TAINTED) {
		page->vmp_cs_tainted = TRUE;
	}
	if (tainted & CS_VALIDATE_NX) {
		page->vmp_cs_nx = TRUE;
	}
	if (validated) {
		page->vmp_cs_validated = TRUE;
	}

#if CHECK_CS_VALIDATION_BITMAP
	if (page->vmp_cs_validated && !page->vmp_cs_tainted) {
		vnode_pager_cs_check_validation_bitmap(object->pager,
						       mo_offset,
						       CS_BITMAP_SET);
	}
#endif /* CHECK_CS_VALIDATION_BITMAP */
}