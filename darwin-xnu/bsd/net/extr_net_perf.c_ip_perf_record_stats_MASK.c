#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct timeval {unsigned long long tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {int /*<<< orphan*/  np_total_pkts; int /*<<< orphan*/  np_total_usecs; } ;
typedef  TYPE_1__ net_perf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,struct timeval*,struct timeval*) ; 

__attribute__((used)) static void
FUNC2(net_perf_t *npp, struct timeval *tv1, struct timeval *tv2, uint64_t num_pkts)
{
	struct timeval tv_diff;
	uint64_t usecs;
	FUNC1(tv2, tv1, &tv_diff);
	usecs = tv_diff.tv_sec * 1000000ULL + tv_diff.tv_usec;
	FUNC0(usecs, &npp->np_total_usecs);
	FUNC0(num_pkts, &npp->np_total_pkts);
}