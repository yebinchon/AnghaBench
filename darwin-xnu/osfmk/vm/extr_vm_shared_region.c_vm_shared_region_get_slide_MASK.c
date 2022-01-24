#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_shared_region_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ slide; int /*<<< orphan*/ * slide_object; } ;
struct TYPE_6__ {int sr_ref_count; TYPE_1__ sr_slide_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

uint32_t
FUNC3(
	vm_shared_region_t	shared_region)
{
	FUNC0(
		("shared_region: -> vm_shared_region_get_slide(%p)\n",
		 (void *)FUNC1(shared_region)));
	FUNC2(shared_region->sr_ref_count > 1);
	FUNC0(
		("shared_region: vm_shared_region_get_slide(%p) <- %u\n",
		 (void )FUNC1(shared_region),
		 shared_region->sr_slide_info.slide));

	/* 0 if we haven't slid */
	FUNC2(shared_region->sr_slide_info.slide_object != NULL || 
			shared_region->sr_slide_info.slide == 0);

	return shared_region->sr_slide_info.slide; 
}