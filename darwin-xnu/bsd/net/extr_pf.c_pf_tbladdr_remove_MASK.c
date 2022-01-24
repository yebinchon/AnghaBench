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
struct TYPE_2__ {int /*<<< orphan*/ * tbl; } ;
struct pf_addr_wrap {scalar_t__ type; TYPE_1__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ PF_ADDR_TABLE ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct pf_addr_wrap *aw)
{
	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	if (aw->type != PF_ADDR_TABLE || aw->p.tbl == NULL)
		return;
	FUNC1(aw->p.tbl);
	aw->p.tbl = NULL;
}