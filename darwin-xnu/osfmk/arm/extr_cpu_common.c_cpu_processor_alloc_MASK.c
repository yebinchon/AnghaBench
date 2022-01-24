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
typedef  int /*<<< orphan*/ * processor_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BootProcessor ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

processor_t
FUNC2(boolean_t is_boot_cpu)
{
	processor_t proc;

	if (is_boot_cpu)
		return &BootProcessor;

	proc = FUNC1(sizeof(*proc));
	if (!proc)
		return NULL;

	FUNC0((void *) proc, sizeof(*proc));
	return proc;
}