#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pf_ruleset {scalar_t__ tables; TYPE_4__* anchor; TYPE_3__* rules; scalar_t__ topen; } ;
struct pf_anchor {struct pf_ruleset ruleset; int /*<<< orphan*/  children; } ;
struct dummynet_event {int /*<<< orphan*/  dn_event_code; } ;
typedef  int /*<<< orphan*/  dn_event ;
struct TYPE_9__ {scalar_t__ refcnt; struct pf_anchor* parent; int /*<<< orphan*/  name; int /*<<< orphan*/  children; } ;
struct TYPE_7__ {scalar_t__ open; int /*<<< orphan*/  ptr; } ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_8__ {TYPE_2__ inactive; TYPE_1__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMMYNET_NLC_DISABLED ; 
 int /*<<< orphan*/  FALSE ; 
 int PF_RULESET_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dummynet_event*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dummynet_event*) ; 
 int /*<<< orphan*/  is_nlc_enabled_glb ; 
 int /*<<< orphan*/  pf_anchor_global ; 
 int /*<<< orphan*/  pf_anchor_node ; 
 int /*<<< orphan*/  pf_anchors ; 
 struct pf_ruleset pf_main_ruleset ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

void
FUNC7(struct pf_ruleset *ruleset)
{
	struct pf_anchor	*parent;
	int			 i;

	while (ruleset != NULL) {
		if (ruleset == &pf_main_ruleset || ruleset->anchor == NULL ||
		    !FUNC0(&ruleset->anchor->children) ||
		    ruleset->anchor->refcnt > 0 || ruleset->tables > 0 ||
		    ruleset->topen)
			return;
		for (i = 0; i < PF_RULESET_MAX; ++i)
			if (!FUNC2(ruleset->rules[i].active.ptr) ||
			    !FUNC2(ruleset->rules[i].inactive.ptr) ||
			    ruleset->rules[i].inactive.open)
				return;
		FUNC1(pf_anchor_global, &pf_anchors, ruleset->anchor);
#if DUMMYNET
		if(strncmp("com.apple.nlc", ruleset->anchor->name,
		    sizeof("com.apple.nlc")) == 0) {
			struct dummynet_event dn_event;
			bzero(&dn_event, sizeof(dn_event));
			dn_event.dn_event_code = DUMMYNET_NLC_DISABLED;
			dummynet_event_enqueue_nwk_wq_entry(&dn_event);
			is_nlc_enabled_glb = FALSE;
		}
#endif
		if ((parent = ruleset->anchor->parent) != NULL)
			FUNC1(pf_anchor_node, &parent->children,
			    ruleset->anchor);
		FUNC5(ruleset->anchor);
		if (parent == NULL)
			return;
		ruleset = &parent->ruleset;
	}
}