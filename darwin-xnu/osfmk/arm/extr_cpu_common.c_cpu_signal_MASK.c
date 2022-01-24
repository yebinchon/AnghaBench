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
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  cpu_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,void*,void*,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC1(cpu_data_t *target_proc,
	   unsigned int signal,
	   void *p0,
	   void *p1)
{
	return FUNC0(target_proc, signal, p0, p1, FALSE);
}