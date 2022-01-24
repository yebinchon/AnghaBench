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
typedef  int int32_t ;
typedef  int esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ESP_ERR_NVS_NEW_VERSION_FOUND ; 
#define  ESP_ERR_NVS_NOT_FOUND 129 
 int ESP_ERR_NVS_NO_FREE_PAGES ; 
#define  ESP_OK 128 
 int /*<<< orphan*/  NVS_READWRITE ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

void FUNC13(void)
{
    // Initialize NVS
    esp_err_t err = FUNC7();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        // NVS partition was truncated and needs to be erased
        // Retry nvs_flash_init
        FUNC0(FUNC6());
        err = FUNC7();
    }
    FUNC0( err );

    // Open
    FUNC11("\n");
    FUNC11("Opening Non-Volatile Storage (NVS) handle... ");
    nvs_handle_t my_handle;
    err = FUNC9("storage", NVS_READWRITE, &my_handle);
    if (err != ESP_OK) {
        FUNC11("Error (%s) opening NVS handle!\n", FUNC1(err));
    } else {
        FUNC11("Done\n");

        // Read
        FUNC11("Reading restart counter from NVS ... ");
        int32_t restart_counter = 0; // value will default to 0, if not set yet in NVS
        err = FUNC8(my_handle, "restart_counter", &restart_counter);
        switch (err) {
            case ESP_OK:
                FUNC11("Done\n");
                FUNC11("Restart counter = %d\n", restart_counter);
                break;
            case ESP_ERR_NVS_NOT_FOUND:
                FUNC11("The value is not initialized yet!\n");
                break;
            default :
                FUNC11("Error (%s) reading!\n", FUNC1(err));
        }

        // Write
        FUNC11("Updating restart counter in NVS ... ");
        restart_counter++;
        err = FUNC10(my_handle, "restart_counter", restart_counter);
        FUNC11((err != ESP_OK) ? "Failed!\n" : "Done\n");

        // Commit written value.
        // After setting any values, nvs_commit() must be called to ensure changes are written
        // to flash storage. Implementations may write to storage at other times,
        // but this is not guaranteed.
        FUNC11("Committing updates in NVS ... ");
        err = FUNC5(my_handle);
        FUNC11((err != ESP_OK) ? "Failed!\n" : "Done\n");

        // Close
        FUNC4(my_handle);
    }

    FUNC11("\n");

    // Restart module
    for (int i = 10; i >= 0; i--) {
        FUNC11("Restarting in %d seconds...\n", i);
        FUNC12(1000 / portTICK_PERIOD_MS);
    }
    FUNC11("Restarting now.\n");
    FUNC3(stdout);
    FUNC2();
}