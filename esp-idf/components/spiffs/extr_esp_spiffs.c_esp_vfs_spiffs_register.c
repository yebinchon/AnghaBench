
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * utime_p; int * rmdir_p; int * mkdir_p; int * telldir_p; int * seekdir_p; int * readdir_r_p; int * readdir_p; int * closedir_p; int * opendir_p; int * rename_p; int * unlink_p; int * link_p; int * stat_p; int * fstat_p; int * close_p; int * open_p; int * read_p; int * lseek_p; int * write_p; int flags; } ;
typedef TYPE_1__ esp_vfs_t ;
struct TYPE_10__ {int base_path; int partition_label; } ;
typedef TYPE_2__ esp_vfs_spiffs_conf_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_11__ {int base_path; } ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 int ESP_VFS_FLAG_CONTEXT_PTR ;
 scalar_t__ ESP_VFS_PATH_MAX ;
 TYPE_5__** _efs ;
 int assert (int ) ;
 scalar_t__ esp_spiffs_by_label (int ,int*) ;
 int esp_spiffs_free (TYPE_5__**) ;
 scalar_t__ esp_spiffs_init (TYPE_2__ const*) ;
 scalar_t__ esp_vfs_register (int ,TYPE_1__ const*,TYPE_5__*) ;
 int strlcat (int ,int ,scalar_t__) ;
 int vfs_spiffs_close ;
 int vfs_spiffs_closedir ;
 int vfs_spiffs_fstat ;
 int vfs_spiffs_link ;
 int vfs_spiffs_lseek ;
 int vfs_spiffs_mkdir ;
 int vfs_spiffs_open ;
 int vfs_spiffs_opendir ;
 int vfs_spiffs_read ;
 int vfs_spiffs_readdir ;
 int vfs_spiffs_readdir_r ;
 int vfs_spiffs_rename ;
 int vfs_spiffs_rmdir ;
 int vfs_spiffs_seekdir ;
 int vfs_spiffs_stat ;
 int vfs_spiffs_telldir ;
 int vfs_spiffs_unlink ;
 int vfs_spiffs_utime ;
 int vfs_spiffs_write ;

esp_err_t esp_vfs_spiffs_register(const esp_vfs_spiffs_conf_t * conf)
{
    assert(conf->base_path);
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



        .utime_p = ((void*)0),

    };

    esp_err_t err = esp_spiffs_init(conf);
    if (err != ESP_OK) {
        return err;
    }

    int index;
    if (esp_spiffs_by_label(conf->partition_label, &index) != ESP_OK) {
        return ESP_ERR_INVALID_STATE;
    }

    strlcat(_efs[index]->base_path, conf->base_path, ESP_VFS_PATH_MAX + 1);
    err = esp_vfs_register(conf->base_path, &vfs, _efs[index]);
    if (err != ESP_OK) {
        esp_spiffs_free(&_efs[index]);
        return err;
    }

    return ESP_OK;
}
