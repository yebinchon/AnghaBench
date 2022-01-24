#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* swapfile_pager_t ;
struct TYPE_4__ {int /*<<< orphan*/  mo_control; } ;
struct TYPE_5__ {int is_ready; TYPE_1__ swp_pgr_hdr; int /*<<< orphan*/ * swapfile_vnode; int /*<<< orphan*/  is_mapped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(
	swapfile_pager_t pager)
{
	FUNC0(pager->is_ready);
	FUNC0(!pager->is_mapped);

	if (pager->swapfile_vnode != NULL) {
		pager->swapfile_vnode = NULL;
	}

	/* trigger the destruction of the memory object */
	FUNC1(pager->swp_pgr_hdr.mo_control, 0);
}