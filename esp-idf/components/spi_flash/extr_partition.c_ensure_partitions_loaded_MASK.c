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
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  s_partition_list ; 
 int /*<<< orphan*/  s_partition_list_lock ; 

__attribute__((used)) static esp_err_t FUNC6(void)
{
    esp_err_t err = ESP_OK;
    if (FUNC2(&s_partition_list)) {
        // only lock if list is empty (and check again after acquiring lock)
        FUNC3(&s_partition_list_lock);
        if (FUNC2(&s_partition_list)) {
            FUNC0(TAG, "Loading the partition table");
            err = FUNC5();
            if (err != ESP_OK) {
                FUNC1(TAG, "load_partitions returned 0x%x", err);
            }
        }
        FUNC4(&s_partition_list_lock);
    }
    return err;
}