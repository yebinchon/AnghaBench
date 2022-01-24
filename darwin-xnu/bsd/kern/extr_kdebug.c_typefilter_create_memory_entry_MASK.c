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
typedef  int /*<<< orphan*/ * typefilter_t ;
typedef  int /*<<< orphan*/  memory_object_size_t ;
typedef  int /*<<< orphan*/  memory_object_offset_t ;
typedef  int /*<<< orphan*/  mach_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  TYPEFILTER_ALLOC_SIZE ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mach_port_t FUNC2(typefilter_t tf)
{
	FUNC0(tf != NULL);

	mach_port_t memory_entry = MACH_PORT_NULL;
	memory_object_size_t size = TYPEFILTER_ALLOC_SIZE;

	FUNC1(kernel_map,
				  &size,
				  (memory_object_offset_t)tf,
				  VM_PROT_READ,
				  &memory_entry,
				  MACH_PORT_NULL);

	return memory_entry;
}