
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct btstack_hid_adapter {int * channels; } ;


 int bt_send_l2cap_ptr (int ,int *,size_t) ;

__attribute__((used)) static void btpad_connection_send_control(void *data,
      uint8_t* data_buf, size_t size)
{
   struct btstack_hid_adapter *connection = (struct btstack_hid_adapter*)data;

   if (connection)
      bt_send_l2cap_ptr(connection->channels[0], data_buf, size);
}
