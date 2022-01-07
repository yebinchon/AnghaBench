
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_APPTRACE_DEST_TRAX ;
 scalar_t__ ESP_OK ;
 scalar_t__ esp_apptrace_read (int ,void*,int*,int ) ;

unsigned SEGGER_RTT_ReadNoLock(unsigned BufferIndex, void* pData, unsigned BufferSize) {
  uint32_t size = BufferSize;
  esp_err_t res = esp_apptrace_read(ESP_APPTRACE_DEST_TRAX, pData, &size, 0);
  if (res != ESP_OK) {
    return 0;
  }
  return size;
}
