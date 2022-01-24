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
typedef  int /*<<< orphan*/  smartconfig_start_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  SC_EVENT ; 
 int /*<<< orphan*/  SC_EVENT_GOT_SSID_PSWD ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  handler_got_ssid_passwd ; 

esp_err_t FUNC4(const smartconfig_start_config_t *config)
{
    esp_err_t err = ESP_OK;

    err = FUNC1(SC_EVENT, SC_EVENT_GOT_SSID_PSWD, handler_got_ssid_passwd, NULL);
    if (err != ESP_OK) {
        FUNC0(TAG, "Register smartconfig default event handler fail!");
        return err;
    }

    err = FUNC3(config);
    if (err != ESP_OK) {
        FUNC2(SC_EVENT, SC_EVENT_GOT_SSID_PSWD, handler_got_ssid_passwd);
    }
    return err;
}