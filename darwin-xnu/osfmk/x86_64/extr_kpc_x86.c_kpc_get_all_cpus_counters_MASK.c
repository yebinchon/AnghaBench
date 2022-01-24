#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct kpc_get_counters_remote {int nb_counters; int /*<<< orphan*/ * buf; int /*<<< orphan*/  buf_stride; int /*<<< orphan*/  classes; } ;
struct TYPE_2__ {int cpu_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC ; 
 int /*<<< orphan*/  CPUMASK_ALL ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kpc_get_curcpu_counters_mp_call ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kpc_get_counters_remote*) ; 

int
FUNC5(uint32_t classes, int *curcpu, uint64_t *buf)
{
	int enabled = 0;

	struct kpc_get_counters_remote hdl = {
		.classes = classes, .nb_counters = 0,
		.buf_stride = FUNC2(classes), .buf = buf
	};

	FUNC0(buf);

	enabled = FUNC3(FALSE);

	if (curcpu)
		*curcpu = FUNC1()->cpu_id;
	FUNC4(CPUMASK_ALL, ASYNC, kpc_get_curcpu_counters_mp_call, &hdl);

	FUNC3(enabled);

	return hdl.nb_counters;
}