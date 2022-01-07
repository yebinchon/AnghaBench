
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 int ESP_APPTRACE_DEST_TRAX ;
 int ESP_LOGE (int ,char*,scalar_t__) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ esp_apptrace_flush_nolock (int ,unsigned long,unsigned long) ;
 scalar_t__ esp_apptrace_write (int ,int ,scalar_t__,unsigned long) ;
 int s_events_buf ;
 scalar_t__ s_events_buf_filled ;

void SEGGER_RTT_ESP32_FlushNoLock(unsigned long min_sz, unsigned long tmo)
{
    esp_err_t res;
    if (s_events_buf_filled > 0) {
      res = esp_apptrace_write(ESP_APPTRACE_DEST_TRAX, s_events_buf, s_events_buf_filled, tmo);
      if (res != ESP_OK) {
        ESP_LOGE(TAG, "Failed to flush buffered events (%d)!\n", res);
      }
    }

    res = esp_apptrace_flush_nolock(ESP_APPTRACE_DEST_TRAX, min_sz, tmo);
    if (res != ESP_OK) {
      ESP_LOGE(TAG, "Failed to flush apptrace data (%d)!\n", res);
    }
    s_events_buf_filled = 0;
}
