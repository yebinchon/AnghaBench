
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * shutdown_handler_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 int SHUTDOWN_HANDLERS_NO ;
 int ** shutdown_handlers ;

esp_err_t esp_unregister_shutdown_handler(shutdown_handler_t handler)
{
    for (int i = 0; i < SHUTDOWN_HANDLERS_NO; i++) {
        if (shutdown_handlers[i] == handler) {
            shutdown_handlers[i] = ((void*)0);
            return ESP_OK;
        }
    }
    return ESP_ERR_INVALID_STATE;
}
