#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* vm_page_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_13__ {scalar_t__ next; scalar_t__ prev; } ;
struct TYPE_12__ {scalar_t__ next; scalar_t__ prev; } ;
struct TYPE_11__ {scalar_t__ next; scalar_t__ prev; } ;
struct TYPE_14__ {scalar_t__ vmp_next_m; int /*<<< orphan*/  vmp_lopage; TYPE_3__ vmp_backgroundq; TYPE_2__ vmp_listq; TYPE_1__ vmp_pageq; int /*<<< orphan*/  vmp_fictitious; scalar_t__ vmp_private; scalar_t__ vmp_tabled; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  vm_page_fictitious_addr ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 

void
FUNC6(
	vm_page_t	mem,
	boolean_t	remove_from_hash)
{
	if (mem->vmp_tabled)
		FUNC5(mem, remove_from_hash);	/* clears tabled, object, offset */

	FUNC0(mem);		/* clears wanted */

	if (mem->vmp_private) {
		mem->vmp_private = FALSE;
		mem->vmp_fictitious = TRUE;
		FUNC2(mem, vm_page_fictitious_addr);
	}
	if ( !mem->vmp_fictitious) {
		FUNC3(mem->vmp_pageq.next == 0);
		FUNC3(mem->vmp_pageq.prev == 0);
		FUNC3(mem->vmp_listq.next == 0);
		FUNC3(mem->vmp_listq.prev == 0);
#if CONFIG_BACKGROUND_QUEUE
		assert(mem->vmp_backgroundq.next == 0);
		assert(mem->vmp_backgroundq.prev == 0);
#endif /* CONFIG_BACKGROUND_QUEUE */
		FUNC3(mem->vmp_next_m == 0);
		FUNC4(mem, FUNC1(mem), mem->vmp_lopage);
	}
}