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
struct waitq_link {scalar_t__ sl_invalidate_ts; int /*<<< orphan*/  sl_invalidate_bt; int /*<<< orphan*/  wqte; scalar_t__ sl_alloc_ts; int /*<<< orphan*/  sl_alloc_bt; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_wqlinktable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct waitq_link *link, int type)
{
	FUNC0(&g_wqlinktable, &link->wqte, type);
#ifdef KEEP_WAITQ_LINK_STATS
	memset(link->sl_alloc_bt, 0, sizeof(link->sl_alloc_bt));
	link->sl_alloc_ts = 0;
	wql_do_alloc_stats(&link->wqte);

	memset(link->sl_invalidate_bt, 0, sizeof(link->sl_invalidate_bt));
	link->sl_invalidate_ts = 0;
#endif
}