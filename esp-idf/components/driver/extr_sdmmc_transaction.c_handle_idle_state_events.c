
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sdmmc_status; scalar_t__ dma_status; } ;
typedef TYPE_1__ sdmmc_event_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGE (int ,char*,int,scalar_t__) ;
 int ESP_LOGV (int ,char*) ;
 scalar_t__ ESP_OK ;
 int SDMMC_INTMASK_CD ;
 int TAG ;
 scalar_t__ sdmmc_host_wait_for_event (int ,TYPE_1__*) ;

__attribute__((used)) static esp_err_t handle_idle_state_events(void)
{




    sdmmc_event_t evt;
    while (sdmmc_host_wait_for_event(0, &evt) == ESP_OK) {
        if (evt.sdmmc_status & SDMMC_INTMASK_CD) {
            ESP_LOGV(TAG, "card detect event");
            evt.sdmmc_status &= ~SDMMC_INTMASK_CD;
        }
        if (evt.sdmmc_status != 0 || evt.dma_status != 0) {
            ESP_LOGE(TAG, "handle_idle_state_events unhandled: %08x %08x",
                    evt.sdmmc_status, evt.dma_status);
        }

    }
    return ESP_OK;
}
