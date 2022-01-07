
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_reset_reason_t ;
typedef int RESET_REASON ;



 int ESP_RST_BROWNOUT ;
 int ESP_RST_DEEPSLEEP ;
 int ESP_RST_INT_WDT ;
 int ESP_RST_PANIC ;
 int ESP_RST_POWERON ;
 int ESP_RST_SDIO ;
 int ESP_RST_SW ;
 int ESP_RST_TASK_WDT ;
 int ESP_RST_UNKNOWN ;
 int ESP_RST_WDT ;
__attribute__((used)) static esp_reset_reason_t get_reset_reason(RESET_REASON rtc_reset_reason, esp_reset_reason_t reset_reason_hint)
{
    switch (rtc_reset_reason) {
        case 138:
            return ESP_RST_POWERON;




        case 132:
        case 131:
        case 141:
            if (reset_reason_hint == ESP_RST_PANIC ||
                reset_reason_hint == ESP_RST_BROWNOUT ||
                reset_reason_hint == ESP_RST_TASK_WDT ||
                reset_reason_hint == ESP_RST_INT_WDT) {
                return reset_reason_hint;
            }
            return ESP_RST_SW;

        case 142:
            return ESP_RST_DEEPSLEEP;

        case 130:
            return ESP_RST_TASK_WDT;

        case 129:
            return ESP_RST_INT_WDT;

        case 139:
        case 134:
        case 135:
        case 136:
        case 128:
            return ESP_RST_WDT;

        case 137:
            return ESP_RST_BROWNOUT;

        case 133:
            return ESP_RST_SDIO;

        case 140:
        default:
            return ESP_RST_UNKNOWN;
    }
}
