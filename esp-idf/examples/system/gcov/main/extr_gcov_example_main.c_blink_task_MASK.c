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

/* Variables and functions */
 int /*<<< orphan*/  BLINK_GPIO ; 
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(void *pvParameter)
{
    // The first two iterations GCOV data are dumped using call to esp_gcov_dump() and OOCD's "esp32 gcov dump" command.
    // After that they can be dumped using OOCD's "esp32 gcov" command only.
    int dump_gcov_after = -2;
    /* Configure the IOMUX register for pad BLINK_GPIO (some pads are
       muxed to GPIO on reset already, but some default to other
       functions and need to be switched to GPIO. Consult the
       Technical Reference for a list of pads and their default
       functions.)
    */
    FUNC2(BLINK_GPIO);
    /* Set the GPIO as a push/pull output */
    FUNC3(BLINK_GPIO, GPIO_MODE_OUTPUT);

    while(1) {
        /* Blink off (output low) */
        FUNC4(BLINK_GPIO, 0);
        FUNC6(500 / portTICK_PERIOD_MS);
        /* Blink on (output high) */
        FUNC4(BLINK_GPIO, 1);
        FUNC6(500 / portTICK_PERIOD_MS);
        FUNC0();
        if (dump_gcov_after++ < 0) {
            // Dump gcov data
            FUNC5("Ready to dump GCOV data...\n");
            FUNC1();
            FUNC5("GCOV data have been dumped.\n");
        }
    }
}