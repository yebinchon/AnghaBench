
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int removal_cb; struct wiiusb_adapter* adapters_head; scalar_t__ manual_removal; } ;
typedef TYPE_1__ wiiusb_hid_t ;
struct wiiusb_adapter {struct wiiusb_adapter* next; TYPE_1__* hid; } ;


 int wiiusb_hid_release_adapter (struct wiiusb_adapter*) ;

__attribute__((used)) static int wiiusb_hid_removal_cb(int result, void *usrdata)
{
   struct wiiusb_adapter *adapter = (struct wiiusb_adapter *)usrdata;
   wiiusb_hid_t *hid = adapter ? adapter->hid : ((void*)0);
   struct wiiusb_adapter *temp = hid ? hid->adapters_head : ((void*)0);

   if (!adapter || !hid || !temp || hid->manual_removal)
      return -1;

   if (temp == adapter)
      hid->adapters_head = adapter->next;
   else
      while (temp->next)
      {
         if (temp->next == adapter)
         {
            temp->next = adapter->next;
            break;
         }
         temp = temp->next;
      }


   wiiusb_hid_release_adapter(adapter);


   hid->removal_cb = 1;

   return 0;
}
