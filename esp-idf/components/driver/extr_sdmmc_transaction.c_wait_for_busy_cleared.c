
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int portTICK_PERIOD_MS ;
 int sdmmc_host_card_busy () ;
 int vTaskDelay (int) ;

__attribute__((used)) static bool wait_for_busy_cleared(int timeout_ms)
{
    if (timeout_ms == 0) {
        return !sdmmc_host_card_busy();
    }





    int timeout_ticks = (timeout_ms + portTICK_PERIOD_MS - 1) / portTICK_PERIOD_MS;
    while (timeout_ticks-- > 0) {
        if (!sdmmc_host_card_busy()) {
            return 1;
        }
        vTaskDelay(1);
    }
    return 0;
}
