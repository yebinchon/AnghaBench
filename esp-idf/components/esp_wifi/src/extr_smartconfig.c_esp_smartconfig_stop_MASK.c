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
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  SC_EVENT ; 
 int /*<<< orphan*/  SC_EVENT_GOT_SSID_PSWD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  handler_got_ssid_passwd ; 
 int /*<<< orphan*/  FUNC2 () ; 

esp_err_t FUNC3(void)
{
    esp_err_t err = ESP_OK;

    err = FUNC1();
    if (err == ESP_OK) {
        FUNC2();
        FUNC0(SC_EVENT, SC_EVENT_GOT_SSID_PSWD, handler_got_ssid_passwd);
    }
    return err;
}