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
typedef  int /*<<< orphan*/  line ;
struct TYPE_3__ {int max_files; int format_if_mount_failed; int /*<<< orphan*/  allocation_unit_size; } ;
typedef  TYPE_1__ esp_vfs_fat_mount_config_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_WL_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  base_path ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 char* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  s_wl_handle ; 
 char* FUNC11 (char*,char) ; 

void FUNC12(void)
{
    FUNC2(TAG, "Mounting FAT filesystem");
    // To mount device we need name of device partition, define base_path
    // and allow format partition in case if it is new one and was not formated before
    const esp_vfs_fat_mount_config_t mount_config = {
            .max_files = 4,
            .format_if_mount_failed = true,
            .allocation_unit_size = CONFIG_WL_SECTOR_SIZE
    };
    esp_err_t err = FUNC5(base_path, "storage", &mount_config, &s_wl_handle);
    if (err != ESP_OK) {
        FUNC1(TAG, "Failed to mount FATFS (%s)", FUNC3(err));
        return;
    }
    FUNC2(TAG, "Opening file");
    FILE *f = FUNC9("/spiflash/hello.txt", "wb");
    if (f == NULL) {
        FUNC1(TAG, "Failed to open file for writing");
        return;
    }
    FUNC10(f, "written using ESP-IDF %s\n", FUNC4());
    FUNC7(f);
    FUNC2(TAG, "File written");

    // Open file for reading
    FUNC2(TAG, "Reading file");
    f = FUNC9("/spiflash/hello.txt", "rb");
    if (f == NULL) {
        FUNC1(TAG, "Failed to open file for reading");
        return;
    }
    char line[128];
    FUNC8(line, sizeof(line), f);
    FUNC7(f);
    // strip newline
    char *pos = FUNC11(line, '\n');
    if (pos) {
        *pos = '\0';
    }
    FUNC2(TAG, "Read from file: '%s'", line);

    // Unmount FATFS
    FUNC2(TAG, "Unmounting FAT filesystem");
    FUNC0( FUNC6(base_path, s_wl_handle));

    FUNC2(TAG, "Done");
}