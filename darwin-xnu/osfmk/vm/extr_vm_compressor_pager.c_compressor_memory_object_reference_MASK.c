#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  memory_object_t ;
typedef  TYPE_1__* compressor_pager_t ;
struct TYPE_5__ {scalar_t__ cpgr_references; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(
	memory_object_t		mem_obj)
{
	compressor_pager_t	pager;

	FUNC2(mem_obj, pager);
	if (pager == NULL)
		return;

	FUNC1(pager);
	FUNC0(pager->cpgr_references > 0);
	pager->cpgr_references++;
	FUNC3(pager);
}