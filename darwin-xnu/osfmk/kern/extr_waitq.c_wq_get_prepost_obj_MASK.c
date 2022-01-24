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
struct TYPE_4__ {scalar_t__ idx; } ;
struct TYPE_5__ {TYPE_1__ lt_id; } ;
struct wq_prepost {TYPE_2__ wqte; } ;
struct TYPE_6__ {scalar_t__ nelem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ g_prepost_table ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct wq_prepost* FUNC2 (int,int) ; 
 struct wq_prepost* FUNC3 (scalar_t__*,int) ; 

__attribute__((used)) static struct wq_prepost *FUNC4(uint64_t *reserved, int type)
{
	struct wq_prepost *wqp = NULL;
	/*
	 * don't fail just because the caller doesn't have enough
	 * reservations, we've kept a low-water mark on the prepost table,
	 * so there should be some available for us.
	 */
	if (reserved && *reserved) {
		wqp = FUNC3(reserved, type);
		FUNC0(wqp->wqte.lt_id.idx < g_prepost_table.nelem);
	} else {
		/*
		 * TODO: if in interrupt context, grab from a special
		 *       region / reserved list!
		 */
		wqp = FUNC2(type, 1);
	}

	if (wqp == NULL)
		FUNC1("Couldn't allocate prepost object!");
	return wqp;
}