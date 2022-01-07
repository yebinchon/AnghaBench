
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sdio_slave_config_t ;
typedef int * intr_handle_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {int * intr_handle; } ;


 scalar_t__ ESP_OK ;
 int ETS_SLC0_INTR_SOURCE ;
 TYPE_1__ context ;
 scalar_t__ esp_intr_alloc (int ,int const,int ,int *,int **) ;
 scalar_t__ init_context (int *) ;
 int sdio_intr ;
 scalar_t__ sdio_slave_hw_init (int *) ;
 int sdio_slave_reset () ;

esp_err_t sdio_slave_initialize(sdio_slave_config_t *config)
{
    esp_err_t r;
    intr_handle_t intr_handle = ((void*)0);
    const int flags = 0;
    r = esp_intr_alloc(ETS_SLC0_INTR_SOURCE, flags, sdio_intr, ((void*)0), &intr_handle);
    if (r != ESP_OK) return r;

    r = sdio_slave_hw_init(config);
    if (r != ESP_OK) return r;
    r = init_context(config);
    if (r != ESP_OK) return r;
    context.intr_handle = intr_handle;

    sdio_slave_reset();
    return ESP_OK;
}
