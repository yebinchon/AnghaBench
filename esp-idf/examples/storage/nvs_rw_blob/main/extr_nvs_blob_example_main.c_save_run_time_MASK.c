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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  nvs_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_NVS_NOT_FOUND ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  NVS_READWRITE ; 
 int /*<<< orphan*/  STORAGE_NAMESPACE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int*,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int*,size_t) ; 
 int portTICK_PERIOD_MS ; 
 int FUNC7 () ; 

esp_err_t FUNC8(void)
{
    nvs_handle_t my_handle;
    esp_err_t err;

    // Open
    err = FUNC5(STORAGE_NAMESPACE, NVS_READWRITE, &my_handle);
    if (err != ESP_OK) return err;

    // Read the size of memory space required for blob
    size_t required_size = 0;  // value will default to 0, if not set yet in NVS
    err = FUNC4(my_handle, "run_time", NULL, &required_size);
    if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) return err;

    // Read previously saved blob if available
    uint32_t* run_time = FUNC1(required_size + sizeof(uint32_t));
    if (required_size > 0) {
        err = FUNC4(my_handle, "run_time", run_time, &required_size);
        if (err != ESP_OK) {
            FUNC0(run_time);
            return err;
        }
    }

    // Write value including previously saved blob if available
    required_size += sizeof(uint32_t);
    run_time[required_size / sizeof(uint32_t) - 1] = FUNC7() * portTICK_PERIOD_MS;
    err = FUNC6(my_handle, "run_time", run_time, required_size);
    FUNC0(run_time);

    if (err != ESP_OK) return err;

    // Commit
    err = FUNC3(my_handle);
    if (err != ESP_OK) return err;

    // Close
    FUNC2(my_handle);
    return ESP_OK;
}