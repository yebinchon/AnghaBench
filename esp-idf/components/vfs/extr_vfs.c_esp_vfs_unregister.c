
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t const path_prefix_len; int path_prefix; } ;
typedef TYPE_1__ vfs_entry_t ;
typedef int esp_err_t ;
struct TYPE_7__ {size_t vfs_index; } ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 TYPE_3__ FD_TABLE_ENTRY_UNUSED ;
 int MAX_FDS ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 int free (TYPE_1__*) ;
 scalar_t__ memcmp (char const*,int ,size_t const) ;
 TYPE_3__* s_fd_table ;
 int s_fd_table_lock ;
 TYPE_1__** s_vfs ;
 size_t s_vfs_count ;
 size_t strlen (char const*) ;

esp_err_t esp_vfs_unregister(const char* base_path)
{
    const size_t base_path_len = strlen(base_path);
    for (size_t i = 0; i < s_vfs_count; ++i) {
        vfs_entry_t* vfs = s_vfs[i];
        if (vfs == ((void*)0)) {
            continue;
        }
        if (base_path_len == vfs->path_prefix_len &&
                memcmp(base_path, vfs->path_prefix, vfs->path_prefix_len) == 0) {
            free(vfs);
            s_vfs[i] = ((void*)0);

            _lock_acquire(&s_fd_table_lock);

            for (int j = 0; j < MAX_FDS; ++j) {
                if (s_fd_table[j].vfs_index == i) {
                    s_fd_table[j] = FD_TABLE_ENTRY_UNUSED;
                }
            }
            _lock_release(&s_fd_table_lock);

            return ESP_OK;
        }
    }
    return ESP_ERR_INVALID_STATE;
}
