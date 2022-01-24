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
typedef  int /*<<< orphan*/  esp_flash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

void FUNC7(esp_flash_t *chip)
{
    FUNC0(TAG, "Testing chip %p...", chip);
    uint32_t offs = FUNC3(chip, 2);
    FUNC6("offs:%X\n", offs);

    for (uint32_t v = 0; v < 2000; v++) {
        FUNC1(ESP_OK, FUNC5(chip, &v, offs + 3 * v, 3) );
    }

    for (uint32_t v = 0; v < 2000; v++) {
        uint32_t readback;
        FUNC1(ESP_OK, FUNC4(chip, &readback, offs + 3 * v, 3) );
        FUNC2(v & 0xFFFFFF, readback & 0xFFFFFF);
    }
}