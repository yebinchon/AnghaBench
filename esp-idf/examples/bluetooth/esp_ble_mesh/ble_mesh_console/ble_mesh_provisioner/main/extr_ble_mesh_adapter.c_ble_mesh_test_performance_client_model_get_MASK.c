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
typedef  size_t uint32_t ;
struct TYPE_2__ {size_t test_num; scalar_t__* time; int /*<<< orphan*/  statistics; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  ble_mesh_test_perf_sema ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 TYPE_1__ test_perf_statistics ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
    uint32_t i, j;
    uint32_t sum_time = 0;

    FUNC2(ble_mesh_test_perf_sema, portMAX_DELAY);

    for (i = 0, j = 0; i < test_perf_statistics.test_num; i++) {
        if (test_perf_statistics.time[i] != 0) {
            sum_time += test_perf_statistics.time[i];
            j += 1;
        } else {
            continue;
        }

        if (j == test_perf_statistics.test_num - 1) {
            break;
        }
    }

    FUNC0(TAG, "VendorModel:Statistics,%d,%d\n",
             test_perf_statistics.statistics, (sum_time / (j + 1)));

    FUNC1(ble_mesh_test_perf_sema);
}