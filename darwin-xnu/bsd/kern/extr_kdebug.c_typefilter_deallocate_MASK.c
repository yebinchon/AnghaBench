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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/ * typefilter_t ;

/* Variables and functions */
 int /*<<< orphan*/  TYPEFILTER_ALLOC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * kdbg_typefilter ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(typefilter_t tf)
{
	FUNC0(tf != NULL);
	FUNC0(tf != kdbg_typefilter);
	FUNC1(kernel_map, (vm_offset_t)tf, TYPEFILTER_ALLOC_SIZE);
}