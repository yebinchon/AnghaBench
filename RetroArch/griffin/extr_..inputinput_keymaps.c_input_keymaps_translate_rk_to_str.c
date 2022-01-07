
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum retro_key { ____Placeholder_retro_key } retro_key ;
struct TYPE_2__ {int key; scalar_t__ str; } ;


 int RETROK_a ;
 int RETROK_z ;
 TYPE_1__* input_config_key_map ;
 int retro_assert (int) ;
 int strlcpy (char*,scalar_t__,size_t) ;

void input_keymaps_translate_rk_to_str(enum retro_key key, char *buf, size_t size)
{
   unsigned i;

   retro_assert(size >= 2);
   *buf = '\0';

   if (key >= RETROK_a && key <= RETROK_z)
   {
      buf[0] = (key - RETROK_a) + 'a';
      buf[1] = '\0';
      return;
   }

   for (i = 0; input_config_key_map[i].str; i++)
   {
      if (input_config_key_map[i].key != key)
         continue;

      strlcpy(buf, input_config_key_map[i].str, size);
      break;
   }
}
