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
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_NVS_NOT_FOUND ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  NVS_READWRITE ; 
 int /*<<< orphan*/  STORAGE_NAMESPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

esp_err_t FUNC5(void)
{
    nvs_handle_t my_handle;
    esp_err_t err;

    // Open
    err = FUNC3(STORAGE_NAMESPACE, NVS_READWRITE, &my_handle);
    if (err != ESP_OK) return err;

    // Read
    int32_t restart_counter = 0; // value will default to 0, if not set yet in NVS
    err = FUNC2(my_handle, "restart_conter", &restart_counter);
    if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) return err;

    // Write
    restart_counter++;
    err = FUNC4(my_handle, "restart_conter", restart_counter);
    if (err != ESP_OK) return err;

    // Commit written value.
    // After setting any values, nvs_commit() must be called to ensure changes are written
    // to flash storage. Implementations may write to storage at other times,
    // but this is not guaranteed.
    err = FUNC1(my_handle);
    if (err != ESP_OK) return err;

    // Close
    FUNC0(my_handle);
    return ESP_OK;
}