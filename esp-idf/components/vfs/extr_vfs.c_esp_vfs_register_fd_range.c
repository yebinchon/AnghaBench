
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_vfs_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_3__ {int vfs_index; int permanent; int local_fd; } ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 int ESP_LOGD (int ,char*,int,...) ;
 scalar_t__ ESP_OK ;
 TYPE_1__ FD_TABLE_ENTRY_UNUSED ;
 int LEN_PATH_PREFIX_IGNORED ;
 int MAX_FDS ;
 int TAG ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 scalar_t__ esp_vfs_register_common (char*,int ,int const*,void*,int*) ;
 int free (int *) ;
 TYPE_1__* s_fd_table ;
 int s_fd_table_lock ;
 int ** s_vfs ;

esp_err_t esp_vfs_register_fd_range(const esp_vfs_t *vfs, void *ctx, int min_fd, int max_fd)
{
    if (min_fd < 0 || max_fd < 0 || min_fd > MAX_FDS || max_fd > MAX_FDS || min_fd > max_fd) {
        ESP_LOGD(TAG, "Invalid arguments: esp_vfs_register_fd_range(0x%x, 0x%x, %d, %d)", (int) vfs, (int) ctx, min_fd, max_fd);
        return ESP_ERR_INVALID_ARG;
    }

    int index = -1;
    esp_err_t ret = esp_vfs_register_common("", LEN_PATH_PREFIX_IGNORED, vfs, ctx, &index);

    if (ret == ESP_OK) {
        _lock_acquire(&s_fd_table_lock);
        for (int i = min_fd; i < max_fd; ++i) {
            if (s_fd_table[i].vfs_index != -1) {
                free(s_vfs[i]);
                s_vfs[i] = ((void*)0);
                for (int j = min_fd; j < i; ++j) {
                    if (s_fd_table[j].vfs_index == index) {
                        s_fd_table[j] = FD_TABLE_ENTRY_UNUSED;
                    }
                }
                _lock_release(&s_fd_table_lock);
                ESP_LOGD(TAG, "esp_vfs_register_fd_range cannot set fd %d (used by other VFS)", i);
                return ESP_ERR_INVALID_ARG;
            }
            s_fd_table[i].permanent = 1;
            s_fd_table[i].vfs_index = index;
            s_fd_table[i].local_fd = i;
        }
        _lock_release(&s_fd_table_lock);
    }

    ESP_LOGD(TAG, "esp_vfs_register_fd_range is successful for range <%d; %d) and VFS ID %d", min_fd, max_fd, index);

    return ret;
}
