
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ esp_vfs_id_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int vfs_index; int permanent; int local_fd; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGD (int ,char*,scalar_t__,int,...) ;
 int ESP_OK ;
 int MAX_FDS ;
 int TAG ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 int esp_err_to_name (int ) ;
 TYPE_1__* s_fd_table ;
 int s_fd_table_lock ;
 scalar_t__ s_vfs_count ;

esp_err_t esp_vfs_register_fd(esp_vfs_id_t vfs_id, int *fd)
{
    if (vfs_id < 0 || vfs_id >= s_vfs_count || fd == ((void*)0)) {
        ESP_LOGD(TAG, "Invalid arguments for esp_vfs_register_fd(%d, 0x%x)", vfs_id, (int) fd);
        return ESP_ERR_INVALID_ARG;
    }

    esp_err_t ret = ESP_ERR_NO_MEM;
    _lock_acquire(&s_fd_table_lock);
    for (int i = 0; i < MAX_FDS; ++i) {
        if (s_fd_table[i].vfs_index == -1) {
            s_fd_table[i].permanent = 1;
            s_fd_table[i].vfs_index = vfs_id;
            s_fd_table[i].local_fd = i;
            *fd = i;
            ret = ESP_OK;
            break;
        }
    }
    _lock_release(&s_fd_table_lock);

    ESP_LOGD(TAG, "esp_vfs_register_fd(%d, 0x%x) finished with %s", vfs_id, (int) fd, esp_err_to_name(ret));

    return ret;
}
