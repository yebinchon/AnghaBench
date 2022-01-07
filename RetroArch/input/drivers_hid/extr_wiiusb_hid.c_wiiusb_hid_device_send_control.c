
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wiiusb_adapter {size_t send_control_size; int send_control_type; int send_control_buffer; } ;


 int memcpy (int ,int *,size_t) ;

__attribute__((used)) static void wiiusb_hid_device_send_control(void *data,
      uint8_t* data_buf, size_t size)
{
   uint8_t control_type;
   struct wiiusb_adapter *adapter = (struct wiiusb_adapter*)data;
   if (!adapter || !data_buf || !adapter->send_control_buffer)
      return;



   control_type = data_buf[0];

   adapter->send_control_size = size - 1;

   data_buf++;
   memcpy(adapter->send_control_buffer, data_buf, adapter->send_control_size);

   adapter->send_control_type = control_type;
}
