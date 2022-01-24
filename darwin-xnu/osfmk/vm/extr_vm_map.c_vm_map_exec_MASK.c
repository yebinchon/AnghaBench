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
typedef  void* vm_map_t ;
typedef  void* task_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  cpu_type_t ;
typedef  int /*<<< orphan*/  cpu_subtype_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC5(
	vm_map_t	new_map,
	task_t		task,
	boolean_t	is64bit,
	void		*fsroot,
	cpu_type_t	cpu,
	cpu_subtype_t	cpu_subtype)
{
	FUNC0(
		("shared_region: task %p: vm_map_exec(%p,%p,%p,0x%x,0x%x): ->\n",
		 (void )FUNC1(FUNC2()),
		 (void )FUNC1(new_map),
		 (void )FUNC1(task),
		 (void )FUNC1(fsroot),
		 cpu,
		 cpu_subtype));
	(void) FUNC3(new_map, task, is64bit);
	(void) FUNC4(new_map, task, is64bit, fsroot, cpu, cpu_subtype);
	FUNC0(
		("shared_region: task %p: vm_map_exec(%p,%p,%p,0x%x,0x%x): <-\n",
		 (void )FUNC1(FUNC2()),
		 (void )FUNC1(new_map),
		 (void )FUNC1(task),
		 (void )FUNC1(fsroot),
		 cpu,
		 cpu_subtype));
	return KERN_SUCCESS;
}