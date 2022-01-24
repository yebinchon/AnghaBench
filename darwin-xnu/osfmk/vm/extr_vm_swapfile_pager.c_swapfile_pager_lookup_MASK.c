#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* swapfile_pager_t ;
typedef  TYPE_2__* memory_object_t ;
struct TYPE_7__ {int /*<<< orphan*/ * mo_pager_ops; } ;
struct TYPE_6__ {scalar_t__ ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  swapfile_pager_ops ; 

swapfile_pager_t
FUNC2(
	memory_object_t	 mem_obj)
{
	swapfile_pager_t	pager;

	FUNC1(mem_obj->mo_pager_ops == &swapfile_pager_ops);
	FUNC0(pager = (swapfile_pager_t) mem_obj);
	FUNC1(pager->ref_count > 0);
	return pager;
}