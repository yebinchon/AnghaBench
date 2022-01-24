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
struct swapout_io_completion {int swp_io_done; int swp_io_error; } ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  c_list_lock ; 
 int /*<<< orphan*/  c_swapout_list_head ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_swapout_soc_done ; 

void
FUNC3(void *io_context, int error)
{
        struct swapout_io_completion *soc;

	soc = (struct swapout_io_completion *)io_context;

	FUNC0(c_list_lock);

	soc->swp_io_done = 1;
	soc->swp_io_error = error;
	vm_swapout_soc_done++;
	
	FUNC2((event_t)&c_swapout_list_head);
	
	FUNC1(c_list_lock);
}