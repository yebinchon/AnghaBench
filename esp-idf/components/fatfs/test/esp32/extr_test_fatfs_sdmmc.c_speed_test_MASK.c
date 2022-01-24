#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sdmmc_slot_config_t ;
struct TYPE_6__ {int /*<<< orphan*/  max_freq_khz; } ;
typedef  TYPE_1__ sdmmc_host_t ;
struct TYPE_7__ {int format_if_mount_failed; int max_files; int allocation_unit_size; } ;
typedef  TYPE_2__ esp_vfs_fat_sdmmc_mount_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  SDMMC_FREQ_HIGHSPEED ; 
 TYPE_1__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,size_t,size_t,int) ; 

__attribute__((used)) static void FUNC6(void* buf, size_t buf_size, size_t file_size, bool write)
{
    sdmmc_host_t host = FUNC0();
    host.max_freq_khz = SDMMC_FREQ_HIGHSPEED;
    sdmmc_slot_config_t slot_config = FUNC1();
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = write,
        .max_files = 5,
        .allocation_unit_size = 64 * 1024
    };
    FUNC2(FUNC3("/sdcard", &host, &slot_config, &mount_config, NULL));

    FUNC5("/sdcard/4mb.bin", buf, buf_size, file_size, write);

    FUNC2(FUNC4());
}