
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rx_size; int rx_buffer; int handle; int state; int connected; } ;
typedef TYPE_1__ wiiu_adapter_t ;


 int ADAPTER_STATE_DONE ;
 int ADAPTER_STATE_READING ;
 int HIDRead (int ,int ,int ,int ,TYPE_1__*) ;
 int wiiu_hid_read_loop_callback ;

__attribute__((used)) static void wiiu_poll_adapter(wiiu_adapter_t *adapter)
{
   if (!adapter->connected)
   {
      adapter->state = ADAPTER_STATE_DONE;
      return;
   }

   adapter->state = ADAPTER_STATE_READING;
   HIDRead(adapter->handle, adapter->rx_buffer, adapter->rx_size,
      wiiu_hid_read_loop_callback, adapter);
}
