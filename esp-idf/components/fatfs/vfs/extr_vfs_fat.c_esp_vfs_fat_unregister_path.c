
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* o_append; int lock; int base_path; } ;
typedef TYPE_1__ vfs_fat_ctx_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 size_t FF_VOLUMES ;
 int _lock_close (int *) ;
 scalar_t__ esp_vfs_unregister (int ) ;
 size_t find_context_index_by_path (char const*) ;
 int free (TYPE_1__*) ;
 TYPE_1__** s_fat_ctxs ;

esp_err_t esp_vfs_fat_unregister_path(const char* base_path)
{
    size_t ctx = find_context_index_by_path(base_path);
    if (ctx == FF_VOLUMES) {
        return ESP_ERR_INVALID_STATE;
    }
    vfs_fat_ctx_t* fat_ctx = s_fat_ctxs[ctx];
    esp_err_t err = esp_vfs_unregister(fat_ctx->base_path);
    if (err != ESP_OK) {
        return err;
    }
    _lock_close(&fat_ctx->lock);
    free(fat_ctx->o_append);
    free(fat_ctx);
    s_fat_ctxs[ctx] = ((void*)0);
    return ESP_OK;
}
