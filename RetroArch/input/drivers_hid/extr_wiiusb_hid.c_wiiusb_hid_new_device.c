
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct wiiusb_adapter* adapters_head; } ;
typedef TYPE_1__ wiiusb_hid_t ;
struct wiiusb_adapter {scalar_t__ device_id; struct wiiusb_adapter* next; } ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static bool wiiusb_hid_new_device(wiiusb_hid_t *hid, int32_t id)
{
   struct wiiusb_adapter *temp;

   if (!hid)
      return 0;

   temp = hid->adapters_head;
   while (temp)
   {
      if (temp->device_id == id)
         return 0;

      temp = temp->next;
   }

   return 1;
}
