#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_5__ {scalar_t__ wqp_next_id; } ;
struct wq_prepost {TYPE_3__ wqp_prepostid; TYPE_2__ wqp_post; int /*<<< orphan*/  wqte; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct lt_elem {TYPE_1__ lt_id; } ;

/* Variables and functions */
 scalar_t__ WQP_POST ; 
 int /*<<< orphan*/  g_prepost_table ; 
 struct lt_elem* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct lt_elem* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct lt_elem*) ; 
 scalar_t__ FUNC3 (struct wq_prepost*) ; 

__attribute__((used)) static struct wq_prepost *FUNC4(struct wq_prepost *head)
{
	struct lt_elem *elem;
	struct wq_prepost *wqp;
	uint64_t id;

	elem = FUNC0(&g_prepost_table, &head->wqte);
	if (!elem)
		return NULL;
	id = elem->lt_id.id;
	elem = FUNC1(&g_prepost_table, id);

	if (!elem)
		return NULL;
	wqp = (struct wq_prepost *)elem;
	if (elem->lt_id.id != id ||
	    FUNC3(wqp) != WQP_POST ||
	    wqp->wqp_post.wqp_next_id != head->wqp_prepostid.id) {
		FUNC2(&g_prepost_table, elem);
		return NULL;
	}

	return wqp;
}