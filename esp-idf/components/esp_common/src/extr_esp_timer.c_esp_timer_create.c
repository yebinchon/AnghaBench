
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* esp_timer_handle_t ;
struct TYPE_7__ {int name; int arg; int * callback; } ;
typedef TYPE_2__ esp_timer_create_args_t ;
typedef int esp_err_t ;
struct TYPE_6__ {int name; int arg; int * callback; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int calloc (int,int) ;
 int is_initialized () ;
 int timer_insert_inactive (TYPE_1__*) ;

esp_err_t esp_timer_create(const esp_timer_create_args_t* args,
                           esp_timer_handle_t* out_handle)
{
    if (!is_initialized()) {
        return ESP_ERR_INVALID_STATE;
    }
    if (args == ((void*)0) || args->callback == ((void*)0) || out_handle == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    esp_timer_handle_t result = (esp_timer_handle_t) calloc(1, sizeof(*result));
    if (result == ((void*)0)) {
        return ESP_ERR_NO_MEM;
    }
    result->callback = args->callback;
    result->arg = args->arg;




    *out_handle = result;
    return ESP_OK;
}
