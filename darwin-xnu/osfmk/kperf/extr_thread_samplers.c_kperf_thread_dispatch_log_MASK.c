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
struct kperf_thread_dispatch {int /*<<< orphan*/  kpthdi_dq_serialno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERF_TI_DISPDATA ; 
 int /*<<< orphan*/  PERF_TI_DISPDATA_32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct kperf_thread_dispatch *thdi)
{
	FUNC3(thdi != NULL);
#if defined(__LP64__)
	FUNC0(PERF_TI_DISPDATA, thdi->kpthdi_dq_serialno);
#else
	BUF_DATA(PERF_TI_DISPDATA_32, UPPER_32(thdi->kpthdi_dq_serialno),
	                              LOWER_32(thdi->kpthdi_dq_serialno));
#endif /* defined(__LP64__) */
}