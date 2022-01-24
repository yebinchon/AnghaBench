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
typedef  TYPE_1__* swapfile_pager_t ;
typedef  int /*<<< orphan*/  memory_object_t ;
struct TYPE_3__ {scalar_t__ ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swapfile_pager_lock ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(
	memory_object_t		mem_obj)
{	
	swapfile_pager_t	pager;

	pager = FUNC3(mem_obj);

	FUNC1(&swapfile_pager_lock);
	FUNC0(pager->ref_count > 0);
	pager->ref_count++;
	FUNC2(&swapfile_pager_lock);
}