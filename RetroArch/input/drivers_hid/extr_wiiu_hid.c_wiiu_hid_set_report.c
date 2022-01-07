
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tx_size; int tx_buffer; int handle; } ;
typedef TYPE_1__ wiiu_adapter_t ;
typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int int32_t ;


 int HIDSetReport (int ,int ,int ,int ,scalar_t__,int *,int *) ;
 int memcpy (int ,void*,scalar_t__) ;
 int memset (int ,int ,scalar_t__) ;

__attribute__((used)) static int32_t wiiu_hid_set_report(void *data, uint8_t report_type,
               uint8_t report_id, void *report_data, uint32_t report_length)
{
   wiiu_adapter_t *adapter = (wiiu_adapter_t *)data;
   if (!adapter || report_length > adapter->tx_size)
      return -1;

   memset(adapter->tx_buffer, 0, adapter->tx_size);
   memcpy(adapter->tx_buffer, report_data, report_length);

   return HIDSetReport(adapter->handle,
         report_type,
         report_id,
         adapter->tx_buffer,
         adapter->tx_size,
         ((void*)0), ((void*)0));
}
