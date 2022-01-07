
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_size; int tx_buffer; int handle; } ;
typedef TYPE_1__ wiiu_adapter_t ;
typedef int uint8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int HIDWrite (int ,int ,int ,int *,int *) ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,int,int,int) ;
 int memcpy (int ,int *,size_t) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void wiiu_hid_send_control(void *data, uint8_t *buf, size_t size)
{
   wiiu_adapter_t *adapter = (wiiu_adapter_t *)data;
   int32_t result;

   if (!adapter)
   {
      RARCH_ERR("[hid]: send_control: bad adapter.\n");
      return;
   }

   memset(adapter->tx_buffer, 0, adapter->tx_size);
   memcpy(adapter->tx_buffer, buf, size);





   result = HIDWrite(adapter->handle, adapter->tx_buffer, adapter->tx_size, ((void*)0), ((void*)0));
   if (result < 0)
   {
      int16_t r1 = (result & 0x0000FFFF);
      int16_t r2 = ((result & 0xFFFF0000) >> 16);
      RARCH_LOG("[hid]: write failed: %08x (%d:%d)\n", result, r2, r1);
   }
}
