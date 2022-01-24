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
typedef  int int32_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_NVS_NOT_FOUND ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  NVS_READWRITE ; 
 int /*<<< orphan*/  STORAGE_NAMESPACE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int*,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

esp_err_t FUNC7(void)
{
    nvs_handle_t my_handle;
    esp_err_t err;

    // Open
    err = FUNC5(STORAGE_NAMESPACE, NVS_READWRITE, &my_handle);
    if (err != ESP_OK) return err;

    // Read restart counter
    int32_t restart_counter = 0; // value will default to 0, if not set yet in NVS
    err = FUNC4(my_handle, "restart_conter", &restart_counter);
    if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) return err;
    FUNC6("Restart counter = %d\n", restart_counter);

    // Read run time blob
    size_t required_size = 0;  // value will default to 0, if not set yet in NVS
    // obtain required memory space to store blob being read from NVS
    err = FUNC3(my_handle, "run_time", NULL, &required_size);
    if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) return err;
    FUNC6("Run time:\n");
    if (required_size == 0) {
        FUNC6("Nothing saved yet!\n");
    } else {
        uint32_t* run_time = FUNC1(required_size);
        err = FUNC3(my_handle, "run_time", run_time, &required_size);
        if (err != ESP_OK) {
            FUNC0(run_time);
            return err;
        }
        for (int i = 0; i < required_size / sizeof(uint32_t); i++) {
            FUNC6("%d: %d\n", i + 1, run_time[i]);
        }
        FUNC0(run_time);
    }

    // Close
    FUNC2(my_handle);
    return ESP_OK;
}