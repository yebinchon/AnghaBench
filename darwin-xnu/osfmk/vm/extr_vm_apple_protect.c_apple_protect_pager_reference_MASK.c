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
typedef  int /*<<< orphan*/  memory_object_t ;
typedef  TYPE_1__* apple_protect_pager_t ;
struct TYPE_3__ {scalar_t__ ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  apple_protect_pager_lock ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(
	memory_object_t		mem_obj)
{	
	apple_protect_pager_t	pager;

	pager = FUNC0(mem_obj);

	FUNC2(&apple_protect_pager_lock);
	FUNC1(pager->ref_count > 0);
	pager->ref_count++;
	FUNC3(&apple_protect_pager_lock);
}