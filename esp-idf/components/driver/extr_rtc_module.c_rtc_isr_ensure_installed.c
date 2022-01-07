
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int ETS_RTC_CORE_INTR_SOURCE ;
 int REG_WRITE (int ,int ) ;
 int RTC_CNTL_INT_CLR_REG ;
 int RTC_CNTL_INT_ENA_REG ;
 int UINT32_MAX ;
 scalar_t__ esp_intr_alloc (int ,int ,int *,int *,scalar_t__*) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_isr ;
 scalar_t__ s_rtc_isr_handle ;
 int s_rtc_isr_handler_list_lock ;

__attribute__((used)) static esp_err_t rtc_isr_ensure_installed(void)
{
    esp_err_t err = ESP_OK;
    portENTER_CRITICAL(&s_rtc_isr_handler_list_lock);
    if (s_rtc_isr_handle) {
        goto out;
    }

    REG_WRITE(RTC_CNTL_INT_ENA_REG, 0);
    REG_WRITE(RTC_CNTL_INT_CLR_REG, UINT32_MAX);
    err = esp_intr_alloc(ETS_RTC_CORE_INTR_SOURCE, 0, &rtc_isr, ((void*)0), &s_rtc_isr_handle);
    if (err != ESP_OK) {
        goto out;
    }

out:
    portEXIT_CRITICAL(&s_rtc_isr_handler_list_lock);
    return err;
}
