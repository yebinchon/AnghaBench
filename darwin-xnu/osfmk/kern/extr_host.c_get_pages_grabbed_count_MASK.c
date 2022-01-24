#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_1__* processor_t ;
struct TYPE_4__ {struct TYPE_4__* processor_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  page_grab_count ; 
 TYPE_1__* processor_list ; 
 int /*<<< orphan*/  processor_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

uint64_t
FUNC3(void)
{
	processor_t processor;
        uint64_t pages_grabbed_count = 0;

	FUNC1(&processor_list_lock);

	processor = processor_list;

	while (processor) {
	        pages_grabbed_count += FUNC0(processor, page_grab_count);
		processor = processor->processor_list;
	}
	FUNC2(&processor_list_lock);

	return(pages_grabbed_count);
}