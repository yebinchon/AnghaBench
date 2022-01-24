#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_partition_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_4__ {int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ esp_app_desc_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static esp_err_t FUNC5(esp_app_desc_t *new_app_info)
{
    if (new_app_info == NULL) {
        return ESP_ERR_INVALID_ARG;
    }

    const esp_partition_t *running = FUNC3();
    esp_app_desc_t running_app_info;
    if (FUNC2(running, &running_app_info) == ESP_OK) {
        FUNC0(TAG, "Running firmware version: %s", running_app_info.version);
    }

    if (FUNC4(new_app_info->version, running_app_info.version, sizeof(new_app_info->version)) == 0) {
        FUNC1(TAG, "Current running version is the same as a new. We will not continue the update.");
        return ESP_FAIL;
    }
    return ESP_OK;
}