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
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  TaskHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MDNS_SERVICE_STACK_DEPTH ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MDNS_TASK_AFFINITY ; 
 int /*<<< orphan*/  MDNS_TASK_PRIORITY ; 
 int /*<<< orphan*/ * _mdns_service_semaphore ; 
 int /*<<< orphan*/  _mdns_service_task ; 
 int /*<<< orphan*/  _mdns_service_task_handle ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC7(void)
{
    if (!_mdns_service_semaphore) {
        _mdns_service_semaphore = FUNC5();
        if (!_mdns_service_semaphore) {
            return ESP_FAIL;
        }
    }
    FUNC0();
    if (FUNC2()) {
        FUNC1();
        return ESP_FAIL;
    }
    if (!_mdns_service_task_handle) {
        FUNC6(_mdns_service_task, "mdns", MDNS_SERVICE_STACK_DEPTH, NULL, MDNS_TASK_PRIORITY,
                                (TaskHandle_t * const)(&_mdns_service_task_handle), MDNS_TASK_AFFINITY);
        if (!_mdns_service_task_handle) {
            FUNC3();
            FUNC1();
            FUNC4(_mdns_service_semaphore);
            _mdns_service_semaphore = NULL;
            return ESP_FAIL;
        }
    }
    FUNC1();
    return ESP_OK;
}