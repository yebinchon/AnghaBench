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
struct pfi_kif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  FUNC1 (struct pfi_kif*) ; 
 int /*<<< orphan*/  pfi_update ; 

void
FUNC2(void *v)
{
	struct pfi_kif		*kif = (struct pfi_kif *)v;

	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	pfi_update++;
	FUNC1(kif);
}