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
typedef  int /*<<< orphan*/  memory_object_t ;
typedef  int /*<<< orphan*/  memory_object_control_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_2__* compressor_pager_t ;
struct TYPE_6__ {int /*<<< orphan*/  mo_control; } ;
struct TYPE_7__ {TYPE_1__ cpgr_hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  MEMORY_OBJECT_CONTROL_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC4(
	memory_object_t		mem_obj)
{
	memory_object_control_t	control;
	compressor_pager_t	pager;

	/* 
	 * control port is a receive right, not a send right.
	 */

	FUNC1(mem_obj, pager);
	FUNC0(pager);

	/*
	 * After memory_object_terminate both memory_object_init
	 * and a no-senders notification are possible, so we need
	 * to clean up our reference to the memory_object_control
	 * to prepare for a new init.
	 */

	control = pager->cpgr_hdr.mo_control;
	pager->cpgr_hdr.mo_control = MEMORY_OBJECT_CONTROL_NULL;

	FUNC2(pager);

	/*
	 * Now we deallocate our reference on the control.
	 */
	FUNC3(control);
	return KERN_SUCCESS;
}