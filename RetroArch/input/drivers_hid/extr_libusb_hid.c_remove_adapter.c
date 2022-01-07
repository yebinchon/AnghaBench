
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_hid {int * slots; } ;
struct libusb_device {int dummy; } ;
struct libusb_adapter {size_t slot; int quitting; struct libusb_adapter* next; int handle; int interface_number; int send_control_buffer; int send_control_lock; int thread; scalar_t__ name; struct libusb_device* device; } ;


 int adapters ;
 int fifo_free (int ) ;
 int free (struct libusb_adapter*) ;
 int input_autoconfigure_disconnect (size_t,char const*) ;
 int libusb_close (int ) ;
 int libusb_release_interface (int ,int ) ;
 int pad_connection_pad_deinit (int *,size_t) ;
 int slock_free (int ) ;
 int sthread_join (int ) ;

__attribute__((used)) static int remove_adapter(void *data, struct libusb_device *dev)
{
   struct libusb_adapter *adapter = (struct libusb_adapter*)&adapters;
   struct libusb_hid *hid = (struct libusb_hid*)data;

   while (adapter->next == ((void*)0))
      return -1;

   if (adapter->next->device == dev)
   {
      struct libusb_adapter *new_next = ((void*)0);
      const char *name = (const char*)adapter->next->name;

      input_autoconfigure_disconnect(adapter->slot, name);

      adapter->next->quitting = 1;
      sthread_join(adapter->next->thread);

      pad_connection_pad_deinit(&hid->slots[adapter->slot], adapter->slot);

      slock_free(adapter->send_control_lock);
      fifo_free(adapter->send_control_buffer);

      libusb_release_interface(adapter->next->handle,
            adapter->next->interface_number);
      libusb_close(adapter->next->handle);

      new_next = adapter->next->next;
      free(adapter->next);
      adapter->next = new_next;

      return 0;
   }

   return -1;
}
