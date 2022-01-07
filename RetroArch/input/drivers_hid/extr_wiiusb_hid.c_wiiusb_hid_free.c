
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int poll_thread_quit; int connections; struct wiiusb_adapter* adapters_head; int manual_removal; scalar_t__ poll_thread; } ;
typedef TYPE_1__ wiiusb_hid_t ;
struct wiiusb_adapter {struct wiiusb_adapter* next; } ;


 int TRUE ;
 int free (TYPE_1__*) ;
 int pad_connection_destroy (int ) ;
 int sthread_join (scalar_t__) ;
 int wiiusb_hid_remove_adapter (struct wiiusb_adapter*) ;

__attribute__((used)) static void wiiusb_hid_free(const void *data)
{
   struct wiiusb_adapter *adapter = ((void*)0);
   struct wiiusb_adapter *next_adapter = ((void*)0);
   wiiusb_hid_t *hid = (wiiusb_hid_t*)data;

   if (!hid)
      return;

   hid->poll_thread_quit = 1;

   if (hid->poll_thread)
      sthread_join(hid->poll_thread);

   hid->manual_removal = TRUE;


   for (adapter = hid->adapters_head; adapter; adapter = next_adapter)
   {
      next_adapter = adapter->next;
      wiiusb_hid_remove_adapter(adapter);
   }

   pad_connection_destroy(hid->connections);

   free(hid);
}
