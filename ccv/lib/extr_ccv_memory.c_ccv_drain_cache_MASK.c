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
struct TYPE_3__ {scalar_t__ rnum; } ;

/* Variables and functions */
 TYPE_1__ ccv_cache ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(void)
{
	if (ccv_cache.rnum > 0)
		FUNC0(&ccv_cache);
}