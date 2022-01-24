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
struct TYPE_2__ {int /*<<< orphan*/  service_uuid; int /*<<< orphan*/  device_name; } ;
typedef  TYPE_1__ protocomm_ble_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ custom_service_uuid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static esp_err_t FUNC3(void *config, const char *service_name, const char *service_key)
{
    if (!config) {
        FUNC0(TAG, "Cannot set null configuration");
        return ESP_ERR_INVALID_ARG;
    }

    if (!service_name) {
        FUNC0(TAG, "Service name cannot be NULL");
        return ESP_ERR_INVALID_ARG;
    }

    protocomm_ble_config_t *ble_config = (protocomm_ble_config_t *) config;
    FUNC2(ble_config->device_name,  service_name, sizeof(ble_config->device_name));

    /* If a custom service UUID has been provided, override the default one */
    if (custom_service_uuid) {
        FUNC1(ble_config->service_uuid, custom_service_uuid, sizeof(ble_config->service_uuid));
    }
    return ESP_OK;
}