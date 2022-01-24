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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  tablesz ;
struct waitq_link {int dummy; } ;

/* Variables and functions */
 int LT_IDX_MAX ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (char*,int*,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ g_lt_max_tbl_size ; 
 int /*<<< orphan*/  g_wqlinktable ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  wql_poison ; 

__attribute__((used)) static void FUNC5(void)
{
	uint32_t tablesz = 0, max_links = 0;

	if (FUNC1("wql_tsize", &tablesz, sizeof(tablesz)) != TRUE)
		tablesz = (uint32_t)g_lt_max_tbl_size;

	tablesz = FUNC0(tablesz, PAGE_SIZE);
	max_links = tablesz / sizeof(struct waitq_link);
	FUNC2(max_links > 0 && tablesz > 0);

	/* we have a restricted index range */
	if (max_links > (LT_IDX_MAX + 1))
		max_links = LT_IDX_MAX + 1;

	FUNC4("init linktable with max:%d elements (%d bytes)",
	       max_links, tablesz);
	FUNC3(&g_wqlinktable, "wqslab.wql", max_links,
	            sizeof(struct waitq_link), wql_poison);
}