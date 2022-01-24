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
struct pf_rule {TYPE_1__* anchor; } ;
struct TYPE_2__ {scalar_t__ refcnt; int /*<<< orphan*/  ruleset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(struct pf_rule *r)
{
	if (r->anchor == NULL)
		return;
	if (r->anchor->refcnt <= 0) {
		FUNC1("pf_anchor_remove: broken refcount\n");
		r->anchor = NULL;
		return;
	}
	if (!--r->anchor->refcnt)
		FUNC0(&r->anchor->ruleset);
	r->anchor = NULL;
}