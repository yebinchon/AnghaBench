
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lseek_p; int * read_p; int * close_p; int * open_p; int * write_p; int flags; } ;
typedef TYPE_1__ esp_vfs_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int host_path; int base_path; } ;


 int CONFIG_SEMIHOSTFS_MAX_MOUNT_POINTS ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_VFS_FLAG_CONTEXT_PTR ;
 int TAG ;
 scalar_t__ ctx_is_unused (TYPE_2__*) ;
 int esp_cpu_in_ocd_debug_mode () ;
 int esp_vfs_register (char const*,TYPE_1__ const*,TYPE_2__*) ;
 TYPE_2__* s_semhost_ctx ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlcpy (int ,char const*,int) ;
 int vfs_semihost_close ;
 int vfs_semihost_lseek ;
 int vfs_semihost_open ;
 int vfs_semihost_read ;
 int vfs_semihost_write ;

esp_err_t esp_vfs_semihost_register(const char* base_path, const char* host_path)
{
    const esp_vfs_t vfs = {
        .flags = ESP_VFS_FLAG_CONTEXT_PTR,
        .write_p = &vfs_semihost_write,
        .open_p = &vfs_semihost_open,
        .close_p = &vfs_semihost_close,
        .read_p = &vfs_semihost_read,
        .lseek_p = &vfs_semihost_lseek,
    };
    ESP_LOGD(TAG, "Register semihosting driver '%s' -> '%s'", base_path, host_path ? host_path : "null");
    if (!esp_cpu_in_ocd_debug_mode()) {
        ESP_LOGE(TAG, "OpenOCD is not connected!");
        return ESP_ERR_NOT_SUPPORTED;
    }
    int i = 0;
    for (i = 0; i < CONFIG_SEMIHOSTFS_MAX_MOUNT_POINTS; i++) {
        if (ctx_is_unused(&s_semhost_ctx[i])) {
            break;
        }
        if (strcmp(base_path, s_semhost_ctx[i].base_path) == 0) {
            return ESP_ERR_INVALID_STATE;
        }
    }
    if (i == CONFIG_SEMIHOSTFS_MAX_MOUNT_POINTS) {
        return ESP_ERR_NO_MEM;
    }
    strlcpy(s_semhost_ctx[i].base_path, base_path, sizeof(s_semhost_ctx[i].base_path) - 1);
    if (host_path) {
        strlcpy(s_semhost_ctx[i].host_path, host_path, sizeof(s_semhost_ctx[i].host_path) - 1);
    }
    ESP_LOGD(TAG, "Register semihosting driver %d %p", i, &s_semhost_ctx[i]);
    return esp_vfs_register(base_path, &vfs, &s_semhost_ctx[i]);
}
