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
struct cpu_data {int /*<<< orphan*/ * cpu_kpc_reload; int /*<<< orphan*/ * cpu_kpc_shadow; int /*<<< orphan*/ ** cpu_kpc_buf; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  COUNTERBUF_SIZE_PER_CPU ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct cpu_data*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpu_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

boolean_t
FUNC4(struct cpu_data *cpu_data)
{
	FUNC0(cpu_data);
	FUNC0(cpu_data->cpu_kpc_buf[0] == NULL);
	FUNC0(cpu_data->cpu_kpc_buf[1] == NULL);
	FUNC0(cpu_data->cpu_kpc_shadow == NULL);
	FUNC0(cpu_data->cpu_kpc_reload == NULL);

	/*
	 * Buffers allocated through kpc_counterbuf_alloc() are large enough to
	 * store all PMCs values from all CPUs. This mimics the userspace API.
	 * This does not suit well with the per-CPU kpc buffers, since:
	 * 	1. Buffers don't need to be this large.
	 * 	2. The actual number of CPUs is not known at this point.
	 *
	 * CPUs are asked to callout into kpc when being registered, we'll
	 * allocate the memory here.
	 */

	if ((cpu_data->cpu_kpc_buf[0] = FUNC1(COUNTERBUF_SIZE_PER_CPU)) == NULL)
		goto error;
	if ((cpu_data->cpu_kpc_buf[1] = FUNC1(COUNTERBUF_SIZE_PER_CPU)) == NULL)
		goto error;
	if ((cpu_data->cpu_kpc_shadow = FUNC1(COUNTERBUF_SIZE_PER_CPU)) == NULL)
		goto error;
	if ((cpu_data->cpu_kpc_reload = FUNC1(COUNTERBUF_SIZE_PER_CPU)) == NULL)
		goto error;

	FUNC3(cpu_data->cpu_kpc_buf[0], 0, COUNTERBUF_SIZE_PER_CPU);
	FUNC3(cpu_data->cpu_kpc_buf[1], 0, COUNTERBUF_SIZE_PER_CPU);
	FUNC3(cpu_data->cpu_kpc_shadow, 0, COUNTERBUF_SIZE_PER_CPU);
	FUNC3(cpu_data->cpu_kpc_reload, 0, COUNTERBUF_SIZE_PER_CPU);

	/* success */
	return TRUE;

error:
	FUNC2(cpu_data);
	return FALSE;
}