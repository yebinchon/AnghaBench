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

/* Variables and functions */
 int /*<<< orphan*/  COUNTERBUF_SIZE_PER_CPU ; 
 int /*<<< orphan*/  FUNC0 (struct cpu_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct cpu_data *cpu_data)
{
	FUNC0(cpu_data);
	if (cpu_data->cpu_kpc_buf[0] != NULL) {
		FUNC1(cpu_data->cpu_kpc_buf[0], COUNTERBUF_SIZE_PER_CPU);
		cpu_data->cpu_kpc_buf[0] = NULL;
	}
	if (cpu_data->cpu_kpc_buf[1] != NULL) {
		FUNC1(cpu_data->cpu_kpc_buf[1], COUNTERBUF_SIZE_PER_CPU);
		cpu_data->cpu_kpc_buf[1] = NULL;
	}
	if (cpu_data->cpu_kpc_shadow != NULL) {
		FUNC1(cpu_data->cpu_kpc_shadow, COUNTERBUF_SIZE_PER_CPU);
		cpu_data->cpu_kpc_shadow = NULL;
	}
	if (cpu_data->cpu_kpc_reload != NULL) {	
		FUNC1(cpu_data->cpu_kpc_reload, COUNTERBUF_SIZE_PER_CPU);
		cpu_data->cpu_kpc_reload = NULL;
	}
}