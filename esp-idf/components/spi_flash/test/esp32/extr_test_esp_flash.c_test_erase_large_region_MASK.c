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
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ address; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int /*<<< orphan*/  esp_flash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,scalar_t__,int) ; 
 TYPE_1__* FUNC6 () ; 

void FUNC7(esp_flash_t *chip)
{
    FUNC0(TAG, "Testing chip %p...", chip);

    const esp_partition_t *part = FUNC6();

    /* Write some noise at the start and the end of the region */
    const char *ohai = "OHAI";
    uint32_t readback;
    FUNC1(ESP_OK, FUNC5(chip, ohai, part->address, 5));
    FUNC1(ESP_OK, FUNC5(chip, ohai, part->address + part->size - 5, 5));

    /* sanity check what we just wrote. since the partition may haven't been erased, we only check the part which is written to 0. */
    uint32_t written_data = *((const uint32_t *)ohai);
    FUNC1(ESP_OK, FUNC4(chip, &readback, part->address + part->size - 5, 4));
    FUNC2(0, readback & (~written_data));
    FUNC1(ESP_OK, FUNC4(chip, &readback, part->address, 4));
    FUNC2(0, readback & (~written_data));

    /* Erase whole region */
    FUNC1(ESP_OK, FUNC3(chip, part->address, part->size));

    /* ensure both areas we wrote are now all-FFs */
    FUNC1(ESP_OK, FUNC4(chip, &readback, part->address, 4));
    FUNC2(0xFFFFFFFF, readback);

    FUNC1(ESP_OK, FUNC4(chip, &readback, part->address + part->size - 5, 4));
    FUNC2(0xFFFFFFFF, readback);
}