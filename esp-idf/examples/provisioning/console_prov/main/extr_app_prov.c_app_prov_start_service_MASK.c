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
typedef  int /*<<< orphan*/  protocomm_console_config_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_2__ {int security; int /*<<< orphan*/ * pc; int /*<<< orphan*/ * pop; } ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_1__* g_prov ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  protocomm_security0 ; 
 int /*<<< orphan*/  protocomm_security1 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  wifi_prov_config_data_handler ; 
 int /*<<< orphan*/  wifi_prov_handlers ; 

__attribute__((used)) static esp_err_t FUNC9(void)
{
    /* Create new protocomm instance */
    g_prov->pc = FUNC6();
    if (g_prov->pc == NULL) {
        FUNC0(TAG, "Failed to create new protocomm instance");
        return ESP_FAIL;
    }

    /* Config for protocomm_console_start() */
    protocomm_console_config_t config = FUNC2();

    /* Start protocomm using console */
    if (FUNC4(g_prov->pc, &config) != ESP_OK) {
        FUNC0(TAG, "Failed to start console provisioning");
        return ESP_FAIL;
    }

    /* Set protocomm version verification endpoint for protocol */
    FUNC8(g_prov->pc, "proto-ver", "V0.1");

    /* Set protocomm security type for endpoint */
    if (g_prov->security == 0) {
        FUNC7(g_prov->pc, "prov-session", &protocomm_security0, NULL);
    } else if (g_prov->security == 1) {
        FUNC7(g_prov->pc, "prov-session", &protocomm_security1, g_prov->pop);
    }

    /* Add endpoint for provisioning to set wifi station config */
    if (FUNC3(g_prov->pc, "prov-config",
                               wifi_prov_config_data_handler,
                               (void *) &wifi_prov_handlers) != ESP_OK) {
        FUNC0(TAG, "Failed to set provisioning endpoint");
        FUNC5(g_prov->pc);
        return ESP_FAIL;
    }

    FUNC1(TAG, "Provisioning started");
    return ESP_OK;
}