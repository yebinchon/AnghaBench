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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  statistics; } ;

/* Variables and functions */
 int /*<<< orphan*/  ble_mesh_test_perf_sema ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 TYPE_1__ test_perf_statistics ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(uint32_t value)
{
    FUNC1(ble_mesh_test_perf_sema, portMAX_DELAY);
    test_perf_statistics.statistics += value;
    FUNC0(ble_mesh_test_perf_sema);
}