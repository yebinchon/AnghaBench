
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct libusb_adapter {size_t* data; size_t endpoint_in_max_size; size_t slot; int endpoint_in; int handle; int send_control_lock; int endpoint_out; int send_control_buffer; int quitting; TYPE_1__* hid; } ;
typedef int send_command_size ;
struct TYPE_2__ {int * slots; } ;
typedef TYPE_1__ libusb_hid_t ;


 int fifo_read (int ,size_t*,size_t) ;
 int fifo_read_avail (int ) ;
 int libusb_interrupt_transfer (int ,int ,size_t*,size_t,int*,int) ;
 int pad_connection_packet (int *,size_t,size_t*,int) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void adapter_thread(void *data)
{
   uint8_t send_command_buf[4096];
   struct libusb_adapter *adapter = (struct libusb_adapter*)data;
   libusb_hid_t *hid = adapter ? adapter->hid : ((void*)0);

   if (!adapter)
      return;

   while (!adapter->quitting)
   {
      size_t send_command_size;
      int tmp;
      int report_number;
      int size = 0;

      slock_lock(adapter->send_control_lock);
      if (fifo_read_avail(adapter->send_control_buffer)
            >= sizeof(send_command_size))
      {
         fifo_read(adapter->send_control_buffer,
               &send_command_size, sizeof(send_command_size));

         if (fifo_read_avail(adapter->send_control_buffer)
               >= sizeof(send_command_size))
         {
            fifo_read(adapter->send_control_buffer,
                  send_command_buf, send_command_size);
            libusb_interrupt_transfer(adapter->handle,
                  adapter->endpoint_out, send_command_buf,
                  send_command_size, &tmp, 1000);
         }
      }
      slock_unlock(adapter->send_control_lock);

      libusb_interrupt_transfer(adapter->handle,
            adapter->endpoint_in, &adapter->data[1],
            adapter->endpoint_in_max_size, &size, 1000);

      if (adapter && hid && hid->slots && size)
         pad_connection_packet(&hid->slots[adapter->slot], adapter->slot,
               adapter->data, size+1);
   }
}
