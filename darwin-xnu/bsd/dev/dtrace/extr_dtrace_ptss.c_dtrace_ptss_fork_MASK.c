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
struct proc {struct dtrace_ptss_page* p_dtrace_ptss_pages; int /*<<< orphan*/  p_mlock; int /*<<< orphan*/  p_dtrace_sprlock; } ;
struct dtrace_ptss_page {struct dtrace_ptss_page* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,struct dtrace_ptss_page*) ; 

void
FUNC2(struct proc* parent, struct proc* child) {
	// The child should not have any pages/entries allocated at this point.
	// ASSERT(child->p_dtrace_ptss_pages == NULL);
	// ASSERT(child->p_dtrace_ptss_free_list == NULL);

	/*
	 * The parent's sprlock should be held, to protect its pages list
	 * from changing while the child references it. The child's sprlock
	 * must also be held, because we are modifying its pages list.
	 * Finally, to prevent a deadlock with the fasttrap cleanup code,
	 * neither the parent or child proc_lock should be held.
	 */
	FUNC0(&parent->p_dtrace_sprlock, LCK_MTX_ASSERT_OWNED);
	FUNC0(&parent->p_mlock, LCK_MTX_ASSERT_NOTOWNED);
	FUNC0(&child->p_dtrace_sprlock, LCK_MTX_ASSERT_OWNED);
	FUNC0(&child->p_mlock, LCK_MTX_ASSERT_NOTOWNED);

	// Get page list from *PARENT*
	struct dtrace_ptss_page* temp = parent->p_dtrace_ptss_pages;

	while (temp != NULL) {		
		// Freeing the page in the *CHILD*
		FUNC1(child, temp);

		// Do not free the kernel memory, it belong to the parent.
		temp = temp->next;
	}
}