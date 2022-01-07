
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device_detected; struct wiiusb_adapter* adapters_head; int poll_thread_quit; } ;
typedef TYPE_1__ wiiusb_hid_t ;
struct wiiusb_adapter {int busy; int data; int endpoint_in_max_size; int endpoint_in; int handle; scalar_t__ send_control_type; struct wiiusb_adapter* next; } ;


 int USB_ReadIntrMsgAsync (int ,int ,int ,int ,int ,struct wiiusb_adapter*) ;
 int usleep (int) ;
 int wiiusb_hid_process_control_message (struct wiiusb_adapter*) ;
 int wiiusb_hid_read_cb ;
 int wiiusb_hid_scan_for_devices (TYPE_1__*) ;

__attribute__((used)) static void wiiusb_hid_poll_thread(void *data)
{
   wiiusb_hid_t *hid = (wiiusb_hid_t*)data;
   struct wiiusb_adapter *adapter = ((void*)0);

   if (!hid)
      return;

   while (!hid->poll_thread_quit)
   {


      if (hid->device_detected)
      {

         hid->device_detected = 0;

         wiiusb_hid_scan_for_devices(hid);
      }


      for (adapter = hid->adapters_head; adapter; adapter=adapter->next)
      {
         if (adapter->busy)
            continue;


         adapter->busy = 1;

         if (adapter->send_control_type)
            wiiusb_hid_process_control_message(adapter);

         USB_ReadIntrMsgAsync(adapter->handle, adapter->endpoint_in,
               adapter->endpoint_in_max_size,
               adapter->data, wiiusb_hid_read_cb, adapter);
      }


      usleep(10000);
   }
}
