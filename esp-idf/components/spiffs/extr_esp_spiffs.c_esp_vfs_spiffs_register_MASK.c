#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * utime_p; int /*<<< orphan*/ * rmdir_p; int /*<<< orphan*/ * mkdir_p; int /*<<< orphan*/ * telldir_p; int /*<<< orphan*/ * seekdir_p; int /*<<< orphan*/ * readdir_r_p; int /*<<< orphan*/ * readdir_p; int /*<<< orphan*/ * closedir_p; int /*<<< orphan*/ * opendir_p; int /*<<< orphan*/ * rename_p; int /*<<< orphan*/ * unlink_p; int /*<<< orphan*/ * link_p; int /*<<< orphan*/ * stat_p; int /*<<< orphan*/ * fstat_p; int /*<<< orphan*/ * close_p; int /*<<< orphan*/ * open_p; int /*<<< orphan*/ * read_p; int /*<<< orphan*/ * lseek_p; int /*<<< orphan*/ * write_p; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ esp_vfs_t ;
struct TYPE_10__ {int /*<<< orphan*/  base_path; int /*<<< orphan*/  partition_label; } ;
typedef  TYPE_2__ esp_vfs_spiffs_conf_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_11__ {int /*<<< orphan*/  base_path; } ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  ESP_VFS_FLAG_CONTEXT_PTR ; 
 scalar_t__ ESP_VFS_PATH_MAX ; 
 TYPE_5__** _efs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__**) ; 
 scalar_t__ FUNC3 (TYPE_2__ const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__ const*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  vfs_spiffs_close ; 
 int /*<<< orphan*/  vfs_spiffs_closedir ; 
 int /*<<< orphan*/  vfs_spiffs_fstat ; 
 int /*<<< orphan*/  vfs_spiffs_link ; 
 int /*<<< orphan*/  vfs_spiffs_lseek ; 
 int /*<<< orphan*/  vfs_spiffs_mkdir ; 
 int /*<<< orphan*/  vfs_spiffs_open ; 
 int /*<<< orphan*/  vfs_spiffs_opendir ; 
 int /*<<< orphan*/  vfs_spiffs_read ; 
 int /*<<< orphan*/  vfs_spiffs_readdir ; 
 int /*<<< orphan*/  vfs_spiffs_readdir_r ; 
 int /*<<< orphan*/  vfs_spiffs_rename ; 
 int /*<<< orphan*/  vfs_spiffs_rmdir ; 
 int /*<<< orphan*/  vfs_spiffs_seekdir ; 
 int /*<<< orphan*/  vfs_spiffs_stat ; 
 int /*<<< orphan*/  vfs_spiffs_telldir ; 
 int /*<<< orphan*/  vfs_spiffs_unlink ; 
 int /*<<< orphan*/  vfs_spiffs_utime ; 
 int /*<<< orphan*/  vfs_spiffs_write ; 

esp_err_t FUNC6(const esp_vfs_spiffs_conf_t * conf)
{
    FUNC0(conf->base_path);
    const esp_vfs_t vfs = {
        .flags = ESP_VFS_FLAG_CONTEXT_PTR,
        .write_p = &vfs_spiffs_write,
        .lseek_p = &vfs_spiffs_lseek,
        .read_p = &vfs_spiffs_read,
        .open_p = &vfs_spiffs_open,
        .close_p = &vfs_spiffs_close,
        .fstat_p = &vfs_spiffs_fstat,
        .stat_p = &vfs_spiffs_stat,
        .link_p = &vfs_spiffs_link,
        .unlink_p = &vfs_spiffs_unlink,
        .rename_p = &vfs_spiffs_rename,
        .opendir_p = &vfs_spiffs_opendir,
        .closedir_p = &vfs_spiffs_closedir,
        .readdir_p = &vfs_spiffs_readdir,
        .readdir_r_p = &vfs_spiffs_readdir_r,
        .seekdir_p = &vfs_spiffs_seekdir,
        .telldir_p = &vfs_spiffs_telldir,
        .mkdir_p = &vfs_spiffs_mkdir,
        .rmdir_p = &vfs_spiffs_rmdir,
#ifdef CONFIG_SPIFFS_USE_MTIME
        .utime_p = &vfs_spiffs_utime,
#else
        .utime_p = NULL,
#endif // CONFIG_SPIFFS_USE_MTIME
    };

    esp_err_t err = FUNC3(conf);
    if (err != ESP_OK) {
        return err;
    }

    int index;
    if (FUNC1(conf->partition_label, &index) != ESP_OK) {
        return ESP_ERR_INVALID_STATE;
    }

    FUNC5(_efs[index]->base_path, conf->base_path, ESP_VFS_PATH_MAX + 1);
    err = FUNC4(conf->base_path, &vfs, _efs[index]);
    if (err != ESP_OK) {
        FUNC2(&_efs[index]);
        return err;
    }

    return ESP_OK;
}