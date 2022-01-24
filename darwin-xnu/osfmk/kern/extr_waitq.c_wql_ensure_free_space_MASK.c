#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ nelem; scalar_t__ used_elem; } ;

/* Variables and functions */
 scalar_t__ g_min_free_table_elem ; 
 TYPE_1__ g_wqlinktable ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (g_wqlinktable.nelem - g_wqlinktable.used_elem < g_min_free_table_elem) {
		/*
		 * we don't hold locks on these values, so check for underflow
		 */
		if (g_wqlinktable.used_elem <= g_wqlinktable.nelem) {
			FUNC1("Forcing table growth: nelem=%d, used=%d, min_free=%d",
				g_wqlinktable.nelem, g_wqlinktable.used_elem,
				g_min_free_table_elem);
			FUNC0(&g_wqlinktable, g_min_free_table_elem);
		}
	}
}