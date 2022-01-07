
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int remove_endpoint; int add_endpoint; } ;
typedef TYPE_1__ protocomm_t ;
struct TYPE_7__ {int task_priority; int stack_size; } ;
typedef TYPE_2__ protocomm_console_config_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_FAIL ;
 int ESP_OK ;
 int console_task ;
 TYPE_1__* pc_console ;
 scalar_t__ pdPASS ;
 int protocomm_console_add_endpoint ;
 int protocomm_console_remove_endpoint ;
 int protocomm_console_task ;
 scalar_t__ xTaskCreate (int ,char*,int ,int *,int ,int *) ;

esp_err_t protocomm_console_start(protocomm_t *pc, const protocomm_console_config_t *config)
{
    if (pc == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (pc_console != ((void*)0)) {
        if (pc_console == pc) {
            return ESP_ERR_INVALID_STATE;
        }
        else {
            return ESP_ERR_NOT_SUPPORTED;
        }
    }


    if (xTaskCreate(protocomm_console_task, "protocomm_console",
                    config->stack_size, ((void*)0), config->task_priority, &console_task) != pdPASS) {
        return ESP_FAIL;
    }

    pc->add_endpoint = protocomm_console_add_endpoint;
    pc->remove_endpoint = protocomm_console_remove_endpoint;
    pc_console = pc;
    return ESP_OK;
}
