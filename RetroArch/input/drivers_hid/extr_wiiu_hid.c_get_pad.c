
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wiiu_hid_t ;
struct TYPE_4__ {int data; int iface; int connected; } ;
typedef TYPE_1__ joypad_connection_t ;


 TYPE_1__* HID_PAD_CONNECTION_PTR (unsigned int) ;
 int wiiu_hid_joypad_query (int *,unsigned int) ;

__attribute__((used)) static joypad_connection_t *get_pad(wiiu_hid_t *hid, unsigned slot)
{
   if (!wiiu_hid_joypad_query(hid, slot))
      return ((void*)0);

   joypad_connection_t *result = HID_PAD_CONNECTION_PTR(slot);
   if (!result || !result->connected || !result->iface || !result->data)
      return ((void*)0);

   return result;
}
