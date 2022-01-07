
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int permanent; scalar_t__ vfs_index; int local_fd; } ;
typedef TYPE_1__ fd_table_t ;
typedef scalar_t__ esp_vfs_id_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGD (int ,char*,scalar_t__,int,...) ;
 int ESP_OK ;
 TYPE_1__ FD_TABLE_ENTRY_UNUSED ;
 int MAX_FDS ;
 int TAG ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 int esp_err_to_name (int ) ;
 TYPE_1__* s_fd_table ;
 int s_fd_table_lock ;
 scalar_t__ s_vfs_count ;

esp_err_t esp_vfs_unregister_fd(esp_vfs_id_t vfs_id, int fd)
{
    esp_err_t ret = ESP_ERR_INVALID_ARG;

    if (vfs_id < 0 || vfs_id >= s_vfs_count || fd < 0 || fd >= MAX_FDS) {
        ESP_LOGD(TAG, "Invalid arguments for esp_vfs_unregister_fd(%d, %d)", vfs_id, fd);
        return ret;
    }

    _lock_acquire(&s_fd_table_lock);
    fd_table_t *item = s_fd_table + fd;
    if (item->permanent == 1 && item->vfs_index == vfs_id && item->local_fd == fd) {
        *item = FD_TABLE_ENTRY_UNUSED;
        ret = ESP_OK;
    }
    _lock_release(&s_fd_table_lock);

    ESP_LOGD(TAG, "esp_vfs_unregister_fd(%d, %d) finished with %s", vfs_id, fd, esp_err_to_name(ret));

    return ret;
}
