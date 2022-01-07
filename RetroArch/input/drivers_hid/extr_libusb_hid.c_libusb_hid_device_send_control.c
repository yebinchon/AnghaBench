
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct libusb_adapter {int send_control_lock; int send_control_buffer; } ;
typedef int size ;


 int RARCH_WARN (char*) ;
 int fifo_write (int ,size_t*,size_t) ;
 size_t fifo_write_avail (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void libusb_hid_device_send_control(void *data,
      uint8_t* data_buf, size_t size)
{
   struct libusb_adapter *adapter = (struct libusb_adapter*)data;

   if (!adapter)
      return;

   slock_lock(adapter->send_control_lock);

   if (fifo_write_avail(adapter->send_control_buffer) >= size + sizeof(size))
   {
      fifo_write(adapter->send_control_buffer, &size, sizeof(size));
      fifo_write(adapter->send_control_buffer, data_buf, size);
   }
   else
   {
      RARCH_WARN("adapter write buffer is full, cannot write send control\n");
   }
   slock_unlock(adapter->send_control_lock);
}
