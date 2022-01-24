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
typedef  int /*<<< orphan*/  uint64_t ;
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  net_perf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct timeval*,struct timeval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 

void FUNC2(net_perf_t *npp, struct timeval *start, uint64_t num_pkts)
{
	struct timeval stop;
	FUNC1(&stop);
	FUNC0(npp, start, &stop, num_pkts);
}