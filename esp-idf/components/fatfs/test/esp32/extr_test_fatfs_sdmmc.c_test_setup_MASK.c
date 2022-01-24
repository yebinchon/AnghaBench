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
typedef  int /*<<< orphan*/  sdmmc_slot_config_t ;
typedef  int /*<<< orphan*/  sdmmc_host_t ;
struct TYPE_3__ {int format_if_mount_failed; int max_files; int allocation_unit_size; } ;
typedef  TYPE_1__ esp_vfs_fat_sdmmc_mount_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
    sdmmc_host_t host = FUNC0();
    sdmmc_slot_config_t slot_config = FUNC1();
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = true,
        .max_files = 5,
        .allocation_unit_size = 16 * 1024
    };
    FUNC2(FUNC3("/sdcard", &host, &slot_config, &mount_config, NULL));
}