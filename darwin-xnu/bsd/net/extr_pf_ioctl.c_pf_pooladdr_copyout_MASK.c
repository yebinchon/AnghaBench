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
struct TYPE_2__ {int /*<<< orphan*/ * tqe_next; int /*<<< orphan*/ * tqe_prev; } ;
struct pf_pooladdr {int /*<<< orphan*/ * kif; TYPE_1__ entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pf_pooladdr*,struct pf_pooladdr*,int) ; 

__attribute__((used)) static void
FUNC1(struct pf_pooladdr *src, struct pf_pooladdr *dst)
{
	FUNC0(src, dst, sizeof (struct pf_pooladdr));

	dst->entries.tqe_prev = NULL;
	dst->entries.tqe_next = NULL;
	dst->kif = NULL;
}