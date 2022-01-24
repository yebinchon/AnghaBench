#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ bootloader_state_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int INVALID_INDEX ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_1__*) ; 

void __attribute__((noreturn)) FUNC5(void)
{
    // 1. Hardware initialization
    if (FUNC0() != ESP_OK) {
        FUNC1();
    }

#ifdef CONFIG_BOOTLOADER_SKIP_VALIDATE_IN_DEEP_SLEEP
    // If this boot is a wake up from the deep sleep then go to the short way,
    // try to load the application which worked before deep sleep.
    // It skips a lot of checks due to it was done before (while first boot).
    bootloader_utility_load_boot_image_from_deep_sleep();
    // If it is not successful try to load an application as usual.
#endif

    // 2. Select the number of boot partition
    bootloader_state_t bs = { 0 };
    int boot_index = FUNC4(&bs);
    if (boot_index == INVALID_INDEX) {
        FUNC1();
    }

    // 3. Load the app image for booting
    FUNC2(&bs, boot_index);
}