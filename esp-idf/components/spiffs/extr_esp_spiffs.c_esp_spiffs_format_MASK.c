#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ s32_t ;
struct TYPE_5__ {int format_if_mount_failed; char const* partition_label; int max_files; } ;
typedef  TYPE_1__ esp_vfs_spiffs_conf_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_6__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  cache_sz; int /*<<< orphan*/  cache; int /*<<< orphan*/  fds_sz; int /*<<< orphan*/  fds; int /*<<< orphan*/  work; int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ SPIFFS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_3__** _efs ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__**) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  spiffs_api_check ; 

esp_err_t FUNC11(const char* partition_label)
{
    bool partition_was_mounted = false;
    int index;
    /* If the partition is not mounted, need to create SPIFFS structures
     * and mount the partition, unmount, format, delete SPIFFS structures.
     * See SPIFFS wiki for the reason why.
     */
    esp_err_t err = FUNC8(partition_label, &index);
    if (err != ESP_OK) {
        esp_vfs_spiffs_conf_t conf = {
                .format_if_mount_failed = true,
                .partition_label = partition_label,
                .max_files = 1
        };
        err = FUNC10(&conf);
        if (err != ESP_OK) {
            return err;
        }
        err = FUNC8(partition_label, &index);
        FUNC7(err == ESP_OK && "failed to get index of the partition just mounted");
    } else if (FUNC5(_efs[index]->fs)) {
        partition_was_mounted = true;
    }

    FUNC6(_efs[index]->fs);

    s32_t res = FUNC3(_efs[index]->fs);
    if (res != SPIFFS_OK) {
        FUNC0(TAG, "format failed, %i", FUNC2(_efs[index]->fs));
        FUNC1(_efs[index]->fs);
        /* If the partition was previously mounted, but format failed, don't
         * try to mount the partition back (it will probably fail). On the
         * other hand, if it was not mounted, need to clean up.
         */
        if (!partition_was_mounted) {
            FUNC9(&_efs[index]);
        }
        return ESP_FAIL;
    }

    if (partition_was_mounted) {
        res = FUNC4(_efs[index]->fs, &_efs[index]->cfg, _efs[index]->work,
                            _efs[index]->fds, _efs[index]->fds_sz, _efs[index]->cache,
                            _efs[index]->cache_sz, spiffs_api_check);
        if (res != SPIFFS_OK) {
            FUNC0(TAG, "mount failed, %i", FUNC2(_efs[index]->fs));
            FUNC1(_efs[index]->fs);
            return ESP_FAIL;
        }
    } else {
        FUNC9(&_efs[index]);
    }
    return ESP_OK;
}