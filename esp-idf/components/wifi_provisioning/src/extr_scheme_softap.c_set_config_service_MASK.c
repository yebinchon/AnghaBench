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
struct TYPE_2__ {int /*<<< orphan*/  password; int /*<<< orphan*/  ssid; } ;
typedef  TYPE_1__ wifi_prov_softap_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static esp_err_t FUNC2(void *config, const char *service_name, const char *service_key)
{
    if (!config) {
        FUNC0(TAG, "Cannot set null configuration");
        return ESP_ERR_INVALID_ARG;
    }

    if (!service_name) {
        FUNC0(TAG, "Service name cannot be NULL");
        return ESP_ERR_INVALID_ARG;
    }

    wifi_prov_softap_config_t *softap_config = (wifi_prov_softap_config_t *) config;
    FUNC1(softap_config->ssid, service_name, sizeof(softap_config->ssid));
    if (service_key) {
        FUNC1(softap_config->password, service_key,  sizeof(softap_config->password));
    }
    return ESP_OK;
}