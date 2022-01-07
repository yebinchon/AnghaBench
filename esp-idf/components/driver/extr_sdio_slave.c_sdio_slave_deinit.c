
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {int * intr_handle; } ;


 scalar_t__ ESP_OK ;
 int assert (int) ;
 TYPE_1__ context ;
 int deinit_context () ;
 scalar_t__ esp_intr_free (int *) ;

void sdio_slave_deinit(void)
{
    esp_err_t ret = esp_intr_free(context.intr_handle);
    assert(ret==ESP_OK);
    context.intr_handle = ((void*)0);
    deinit_context();
}
