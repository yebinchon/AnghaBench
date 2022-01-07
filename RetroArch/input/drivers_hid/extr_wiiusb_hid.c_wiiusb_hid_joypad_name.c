
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * connections; } ;
typedef TYPE_1__ wiiusb_hid_t ;


 unsigned int MAX_USERS ;
 char const* pad_connection_get_name (int *,unsigned int) ;

__attribute__((used)) static const char *wiiusb_hid_joypad_name(void *data, unsigned pad)
{
   wiiusb_hid_t *hid = (wiiusb_hid_t*)data;
   if (pad >= MAX_USERS)
      return ((void*)0);

   if (hid)
      return pad_connection_get_name(&hid->connections[pad], pad);

   return ((void*)0);
}
