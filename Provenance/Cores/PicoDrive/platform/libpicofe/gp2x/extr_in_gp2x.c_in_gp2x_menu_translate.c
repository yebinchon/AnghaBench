
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pbtn; int key; } ;


 int KEY_PBTN_MAP_SIZE ;
 TYPE_1__* key_pbtn_map ;

__attribute__((used)) static int in_gp2x_menu_translate(void *drv_data, int keycode, char *charcode)
{
 int i;
 if (keycode < 0)
 {

  keycode = -keycode;
  for (i = 0; i < KEY_PBTN_MAP_SIZE; i++)
   if (key_pbtn_map[i].pbtn == keycode)
    return key_pbtn_map[i].key;
 }
 else
 {
  for (i = 0; i < KEY_PBTN_MAP_SIZE; i++)
   if (key_pbtn_map[i].key == keycode)
    return key_pbtn_map[i].pbtn;
 }

 return 0;
}
