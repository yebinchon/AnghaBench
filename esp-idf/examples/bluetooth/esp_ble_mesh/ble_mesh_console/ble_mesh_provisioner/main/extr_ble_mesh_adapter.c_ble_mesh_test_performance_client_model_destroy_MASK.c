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
struct TYPE_2__ {scalar_t__ statistics; scalar_t__ node_num; scalar_t__ ttl; scalar_t__ test_num; int /*<<< orphan*/ * package_index; int /*<<< orphan*/ * time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ test_perf_statistics ; 

void FUNC1(void)
{
    if (test_perf_statistics.time != NULL) {
        FUNC0(test_perf_statistics.time);
    }

    if (test_perf_statistics.package_index != NULL) {
        FUNC0(test_perf_statistics.package_index);
    }

    test_perf_statistics.test_num = 0;
    test_perf_statistics.ttl = 0;
    test_perf_statistics.node_num = 0;
    test_perf_statistics.statistics = 0;
}