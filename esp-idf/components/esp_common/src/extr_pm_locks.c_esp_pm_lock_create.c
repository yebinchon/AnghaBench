
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ portMUX_TYPE ;
typedef int esp_pm_lock_type_t ;
struct TYPE_5__ {int arg; char const* name; scalar_t__ spinlock; int mode; int type; } ;
typedef TYPE_1__ esp_pm_lock_t ;
typedef TYPE_1__* esp_pm_lock_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int SLIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 scalar_t__ calloc (int,int) ;
 int esp_pm_impl_get_mode (int ,int) ;
 int next ;
 scalar_t__ portMUX_INITIALIZER_UNLOCKED ;
 int s_list ;
 int s_list_lock ;

esp_err_t esp_pm_lock_create(esp_pm_lock_type_t lock_type, int arg,
        const char* name, esp_pm_lock_handle_t* out_handle)
{

    return ESP_ERR_NOT_SUPPORTED;


    if (out_handle == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    esp_pm_lock_t* new_lock = (esp_pm_lock_t*) calloc(1, sizeof(*new_lock));
    if (!new_lock) {
        return ESP_ERR_NO_MEM;
    }
    new_lock->type = lock_type;
    new_lock->arg = arg;
    new_lock->mode = esp_pm_impl_get_mode(lock_type, arg);
    new_lock->name = name;
    new_lock->spinlock = (portMUX_TYPE) portMUX_INITIALIZER_UNLOCKED;
    *out_handle = new_lock;

    _lock_acquire(&s_list_lock);
    SLIST_INSERT_HEAD(&s_list, new_lock, next);
    _lock_release(&s_list_lock);
    return ESP_OK;
}
