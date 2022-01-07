
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_APPTRACE_DEST_TRAX ;
 int ESP_LOGE (int ,char*,unsigned int) ;
 scalar_t__ ESP_OK ;
 int SEGGER_HOST_WAIT_TMO ;
 int SEGGER_RTT_ESP32_FlushNoLock (int ,int ) ;
 int SEGGER_STOP_WAIT_TMO ;
 unsigned int SYSVIEW_EVENTS_BUF_SZ ;
 int SYSVIEW_EVTID_TRACE_STOP ;
 int TAG ;
 scalar_t__ esp_apptrace_write (int ,int *,unsigned int,int ) ;
 int memcpy (int *,void const*,unsigned int) ;
 int * s_events_buf ;
 unsigned int s_events_buf_filled ;
 scalar_t__ xPortGetCoreID () ;

unsigned SEGGER_RTT_WriteSkipNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes) {
  uint8_t *pbuf = (uint8_t *)pBuffer;
  uint8_t event_id = *pbuf;

  if (NumBytes > SYSVIEW_EVENTS_BUF_SZ) {
      ESP_LOGE(TAG, "Too large event %u bytes!", NumBytes);
      return 0;
  }
  if (xPortGetCoreID()) {



    if (*pbuf & 0x80) {
      *(pbuf + 1) |= (1 << 6);
    } else if (NumBytes != 10 || *pbuf != 0) {
      *pbuf |= (1 << 6);
    }
  }
  if (s_events_buf_filled + NumBytes > SYSVIEW_EVENTS_BUF_SZ) {
    esp_err_t res = esp_apptrace_write(ESP_APPTRACE_DEST_TRAX, s_events_buf, s_events_buf_filled, SEGGER_HOST_WAIT_TMO);
    if (res != ESP_OK) {
      return 0;
    }
    s_events_buf_filled = 0;
  }
  memcpy(&s_events_buf[s_events_buf_filled], pBuffer, NumBytes);
  s_events_buf_filled += NumBytes;
  if (event_id == SYSVIEW_EVTID_TRACE_STOP) {
    SEGGER_RTT_ESP32_FlushNoLock(0, SEGGER_STOP_WAIT_TMO);
  }
  return NumBytes;
}
