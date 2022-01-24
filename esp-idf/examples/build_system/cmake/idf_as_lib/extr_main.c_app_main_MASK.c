#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cores; int features; int revision; } ;
typedef  TYPE_1__ esp_chip_info_t ;

/* Variables and functions */
 int CHIP_FEATURE_BLE ; 
 int CHIP_FEATURE_BT ; 
 int CHIP_FEATURE_EMB_FLASH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(void)
{
    FUNC3("Hello world!\n");

    /* Print chip information */
    esp_chip_info_t chip_info;
    FUNC0(&chip_info);
    FUNC3("This is ESP32 chip with %d CPU cores, WiFi%s%s, ",
            chip_info.cores,
            (chip_info.features & CHIP_FEATURE_BT) ? "/BT" : "",
            (chip_info.features & CHIP_FEATURE_BLE) ? "/BLE" : "");

    FUNC3("silicon revision %d, ", chip_info.revision);

    FUNC3("%dMB %s flash\n", FUNC4() / (1024 * 1024),
            (chip_info.features & CHIP_FEATURE_EMB_FLASH) ? "embedded" : "external");

    for (int i = 10; i >= 0; i--) {
        FUNC3("Restarting in %d seconds...\n", i);
        FUNC5(1000 / portTICK_PERIOD_MS);
    }
    FUNC3("Restarting now.\n");
    FUNC2(stdout);
    FUNC1();
}