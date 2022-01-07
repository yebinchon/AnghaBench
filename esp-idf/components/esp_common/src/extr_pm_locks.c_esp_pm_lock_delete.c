
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* esp_pm_lock_handle_t ;
typedef int esp_err_t ;
struct TYPE_5__ {scalar_t__ count; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_OK ;
 int SLIST_REMOVE (int *,TYPE_1__*,int ,int ) ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 int esp_pm_lock ;
 int free (TYPE_1__*) ;
 int next ;
 int s_list ;
 int s_list_lock ;

esp_err_t esp_pm_lock_delete(esp_pm_lock_handle_t handle)
{

    return ESP_ERR_NOT_SUPPORTED;


    if (handle == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (handle->count > 0) {
        return ESP_ERR_INVALID_STATE;
    }
    _lock_acquire(&s_list_lock);
    SLIST_REMOVE(&s_list, handle, esp_pm_lock, next);
    _lock_release(&s_list_lock);
    free(handle);
    return ESP_OK;
}
