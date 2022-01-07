
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ portBASE_TYPE ;
typedef int esp_err_t ;
typedef int TickType_t ;
struct TYPE_2__ {int ret_queue; } ;


 int ESP_ERR_TIMEOUT ;
 int ESP_OK ;
 TYPE_1__ context ;
 scalar_t__ pdTRUE ;
 scalar_t__ xQueueReceive (int ,void**,int ) ;

esp_err_t sdio_slave_send_get_finished(void** out_arg, TickType_t wait)
{
    void* arg = ((void*)0);
    portBASE_TYPE err = xQueueReceive(context.ret_queue, &arg, wait);
    if (out_arg) *out_arg = arg;
    if (err != pdTRUE) return ESP_ERR_TIMEOUT;
    return ESP_OK;
}
