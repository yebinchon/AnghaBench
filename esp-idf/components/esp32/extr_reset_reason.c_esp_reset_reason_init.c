
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_reset_reason_t ;


 scalar_t__ ESP_RST_UNKNOWN ;
 int PRO_CPU_NUM ;
 int esp_reset_reason_clear_hint () ;
 scalar_t__ esp_reset_reason_get_hint () ;
 int get_reset_reason (int ,scalar_t__) ;
 int rtc_get_reset_reason (int ) ;
 int s_reset_reason ;

__attribute__((used)) static void __attribute__((constructor)) esp_reset_reason_init(void)
{
    esp_reset_reason_t hint = esp_reset_reason_get_hint();
    s_reset_reason = get_reset_reason(rtc_get_reset_reason(PRO_CPU_NUM),
                                      hint);
    if (hint != ESP_RST_UNKNOWN) {
        esp_reset_reason_clear_hint();
    }
}
