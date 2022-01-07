
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_vfs_t ;
typedef int esp_vfs_id_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int LEN_PATH_PREFIX_IGNORED ;
 int esp_vfs_register_common (char*,int ,int const*,void*,int*) ;

esp_err_t esp_vfs_register_with_id(const esp_vfs_t *vfs, void *ctx, esp_vfs_id_t *vfs_id)
{
    if (vfs_id == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    *vfs_id = -1;
    return esp_vfs_register_common("", LEN_PATH_PREFIX_IGNORED, vfs, ctx, vfs_id);
}
