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
typedef  scalar_t__ uint64_t ;
struct waitq_link {int dummy; } ;
struct TYPE_2__ {int nreserved_releases; } ;

/* Variables and functions */
 int /*<<< orphan*/  WQL_LINK ; 
 TYPE_1__ g_wqlinktable ; 
 struct waitq_link* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct waitq_link*) ; 

void FUNC2(uint64_t id)
{
	struct waitq_link *link;

	if (id == 0)
		return;

	link = FUNC0(id, WQL_LINK);
	if (!link)
		return;

	/*
	 * if we successfully got a link object, then we know
	 * it's not been marked valid, and can be released with
	 * a standard wql_put_link() which should free the element.
	 */
	FUNC1(link);
#if CONFIG_LTABLE_STATS
	g_wqlinktable.nreserved_releases += 1;
#endif
}