#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
struct TYPE_12__ {int vmp_fictitious; void* vmp_busy; int /*<<< orphan*/  vmp_wanted; void* vmp_free_when_done; void* vmp_private; void* vmp_precious; void* vmp_cleaning; int /*<<< orphan*/  vmp_offset; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPR_VM_PAGEOUT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ vm_page_fictitious_addr ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC11(
	vm_page_t		m,
	vm_page_t		new_m,
	vm_object_t		new_object,
	vm_object_offset_t	new_offset)
{
	FUNC5(!m->vmp_busy);
#if 0
	assert(!m->vmp_cleaning);
#endif

	FUNC4(XPR_VM_PAGEOUT,
	    "vm_pageclean_setup, obj 0x%X off 0x%X page 0x%X new 0x%X new_off 0x%X\n",
		FUNC2(m), m->vmp_offset, m,
		new_m, new_offset);

	FUNC6(FUNC1(m));

	/*
	 * Mark original page as cleaning in place.
	 */
	m->vmp_cleaning = TRUE;
	FUNC0(m, FALSE);
	m->vmp_precious = FALSE;

	/*
	 * Convert the fictitious page to a private shadow of
	 * the real page.
	 */
	FUNC5(new_m->vmp_fictitious);
	FUNC5(FUNC1(new_m) == vm_page_fictitious_addr);
	new_m->vmp_fictitious = FALSE;
	new_m->vmp_private = TRUE;
	new_m->vmp_free_when_done = TRUE;
	FUNC3(new_m, FUNC1(m));

	FUNC8();
	FUNC10(new_m, VM_KERN_MEMORY_NONE, TRUE);
	FUNC9();

	FUNC7(new_m, new_object, new_offset, VM_KERN_MEMORY_NONE);
	FUNC5(!new_m->vmp_wanted);
	new_m->vmp_busy = FALSE;
}