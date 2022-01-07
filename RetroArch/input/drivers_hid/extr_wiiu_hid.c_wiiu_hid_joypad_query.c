
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wiiu_hid_t ;


 unsigned int HID_MAX_SLOT () ;

__attribute__((used)) static bool wiiu_hid_joypad_query(void *data, unsigned slot)
{
   wiiu_hid_t *hid = (wiiu_hid_t *)data;
   if (!hid)
      return 0;

   return slot < HID_MAX_SLOT();
}
