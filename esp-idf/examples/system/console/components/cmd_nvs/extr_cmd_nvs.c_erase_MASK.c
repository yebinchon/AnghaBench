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
typedef  int /*<<< orphan*/  nvs_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  NVS_READWRITE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  current_namespace ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static esp_err_t FUNC5(const char *key)
{
    nvs_handle_t nvs;

    esp_err_t err = FUNC4(current_namespace, NVS_READWRITE, &nvs);
    if (err == ESP_OK) {
        err = FUNC3(nvs, key);
        if (err == ESP_OK) {
            err = FUNC2(nvs);
            if (err == ESP_OK) {
                FUNC0(TAG, "Value with key '%s' erased", key);
            }
        }
        FUNC1(nvs);
    }

    return err;
}