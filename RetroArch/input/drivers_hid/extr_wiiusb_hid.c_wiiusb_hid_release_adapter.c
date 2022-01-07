
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * connections; } ;
typedef TYPE_1__ wiiusb_hid_t ;
struct wiiusb_adapter {size_t slot; struct wiiusb_adapter* data; struct wiiusb_adapter* send_control_buffer; TYPE_1__* hid; } ;
typedef int int32_t ;


 int free (struct wiiusb_adapter*) ;
 int input_autoconfigure_disconnect (size_t,char const*) ;
 int pad_connection_pad_deinit (int *,size_t) ;
 char* wiiusb_hid_joypad_name (TYPE_1__*,size_t) ;

__attribute__((used)) static int32_t wiiusb_hid_release_adapter(struct wiiusb_adapter *adapter)
{
   wiiusb_hid_t *hid = ((void*)0);
   const char *name = ((void*)0);

   if (!adapter)
      return -1;

   hid = adapter->hid;
   name = wiiusb_hid_joypad_name(hid, adapter->slot);

   input_autoconfigure_disconnect(adapter->slot, name);

   pad_connection_pad_deinit(&hid->connections[adapter->slot], adapter->slot);

   free(adapter->send_control_buffer);
   free(adapter->data);
   free(adapter);

   return 0;
}
