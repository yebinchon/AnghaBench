
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t path_prefix_len; size_t offset; void* ctx; int vfs; int path_prefix; } ;
typedef TYPE_1__ vfs_entry_t ;
typedef int esp_vfs_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 size_t ESP_VFS_PATH_MAX ;
 size_t LEN_PATH_PREFIX_IGNORED ;
 size_t VFS_MAX_COUNT ;
 int bzero (int ,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int const*,int) ;
 TYPE_1__** s_vfs ;
 size_t s_vfs_count ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static esp_err_t esp_vfs_register_common(const char* base_path, size_t len, const esp_vfs_t* vfs, void* ctx, int *vfs_index)
{
    if (len != LEN_PATH_PREFIX_IGNORED) {
        if ((len != 0 && len < 2) || (len > ESP_VFS_PATH_MAX)) {
            return ESP_ERR_INVALID_ARG;
        }
        if ((len > 0 && base_path[0] != '/') || base_path[len - 1] == '/') {
            return ESP_ERR_INVALID_ARG;
        }
    }
    vfs_entry_t *entry = (vfs_entry_t*) malloc(sizeof(vfs_entry_t));
    if (entry == ((void*)0)) {
        return ESP_ERR_NO_MEM;
    }
    size_t index;
    for (index = 0; index < s_vfs_count; ++index) {
        if (s_vfs[index] == ((void*)0)) {
            break;
        }
    }
    if (index == s_vfs_count) {
        if (s_vfs_count >= VFS_MAX_COUNT) {
            free(entry);
            return ESP_ERR_NO_MEM;
        }
        ++s_vfs_count;
    }
    s_vfs[index] = entry;
    if (len != LEN_PATH_PREFIX_IGNORED) {
        strcpy(entry->path_prefix, base_path);
    } else {
        bzero(entry->path_prefix, sizeof(entry->path_prefix));
    }
    memcpy(&entry->vfs, vfs, sizeof(esp_vfs_t));
    entry->path_prefix_len = len;
    entry->ctx = ctx;
    entry->offset = index;

    if (vfs_index) {
        *vfs_index = index;
    }

    return ESP_OK;
}
