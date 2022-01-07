
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xkb_mod_index_t ;
typedef int uint16_t ;
struct xkb_rule_names {char* rules; int layout; int variant; int member_0; } ;
struct string_list {int size; TYPE_2__* elems; } ;
struct TYPE_5__ {scalar_t__* input_keyboard_layout; } ;
struct TYPE_7__ {TYPE_1__ arrays; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_6__ {int data; } ;


 char* MAP_FAILED ;
 int MAP_SHARED ;
 int MOD_MAP_SIZE ;
 int PROT_READ ;
 int RETROKMOD_ALT ;
 int RETROKMOD_CAPSLOCK ;
 int RETROKMOD_CTRL ;
 int RETROKMOD_META ;
 int RETROKMOD_SHIFT ;
 int XKB_CONTEXT_NO_FLAGS ;
 int XKB_KEYMAP_COMPILE_NO_FLAGS ;
 int XKB_KEYMAP_FORMAT_TEXT_V1 ;
 int XKB_MAP_COMPILE_NO_FLAGS ;
 int XKB_MOD_NAME_ALT ;
 int XKB_MOD_NAME_CAPS ;
 int XKB_MOD_NAME_CTRL ;
 int XKB_MOD_NAME_LOGO ;
 int XKB_MOD_NAME_SHIFT ;
 scalar_t__ calloc (int ,int) ;
 TYPE_3__* config_get_ptr () ;
 int free_xkb () ;
 scalar_t__ mmap (int *,size_t,int ,int ,int,int ) ;
 int * mod_map_bit ;
 int * mod_map_idx ;
 int munmap (char*,size_t) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (scalar_t__*,char*) ;
 scalar_t__ xkb_context_new (int ) ;
 scalar_t__ xkb_ctx ;
 int xkb_keymap_mod_get_index (scalar_t__,int ) ;
 scalar_t__ xkb_keymap_new_from_names (scalar_t__,struct xkb_rule_names*,int ) ;
 scalar_t__ xkb_keymap_new_from_string (scalar_t__,char*,int ,int ) ;
 scalar_t__ xkb_map ;
 int xkb_state ;
 int xkb_state_new (scalar_t__) ;

int init_xkb(int fd, size_t size)
{
   char *map_str = ((void*)0);
   mod_map_idx = (xkb_mod_index_t *)calloc(
         MOD_MAP_SIZE, sizeof(xkb_mod_index_t));

   if (!mod_map_idx)
      goto error;

   mod_map_bit = (uint16_t*)
      calloc(MOD_MAP_SIZE, sizeof(uint16_t));

   if (!mod_map_bit)
      goto error;

   xkb_ctx = xkb_context_new(XKB_CONTEXT_NO_FLAGS);

   if (xkb_ctx)
   {
      if (fd >= 0)
      {
         map_str = (char*)mmap(((void*)0), size, PROT_READ, MAP_SHARED, fd, 0);
         if (map_str == MAP_FAILED)
            goto error;

         xkb_map = xkb_keymap_new_from_string(xkb_ctx, map_str,
               XKB_KEYMAP_FORMAT_TEXT_V1, XKB_KEYMAP_COMPILE_NO_FLAGS);
         munmap(map_str, size);
      }
      else
      {
         struct string_list *list = ((void*)0);
         struct xkb_rule_names rule = {0};
         settings_t *settings = config_get_ptr();

         rule.rules = "evdev";

         if (*settings->arrays.input_keyboard_layout)
         {
            list = string_split(settings->arrays.input_keyboard_layout, ":");
            if (list && list->size >= 2)
               rule.variant = list->elems[1].data;
            if (list && list->size >= 1)
               rule.layout = list->elems[0].data;
         }

         xkb_map = xkb_keymap_new_from_names(xkb_ctx,
               &rule, XKB_MAP_COMPILE_NO_FLAGS);

         if (list)
            string_list_free(list);
      }
   }

   if (xkb_map)
   {
      xkb_mod_index_t *map_idx = (xkb_mod_index_t*)&mod_map_idx[0];
      uint16_t *map_bit = (uint16_t*)&mod_map_bit[0];

      xkb_state = xkb_state_new(xkb_map);

      *map_idx = xkb_keymap_mod_get_index(xkb_map, XKB_MOD_NAME_CAPS);
      map_idx++;
      *map_bit = RETROKMOD_CAPSLOCK;
      map_bit++;
      *map_idx = xkb_keymap_mod_get_index(xkb_map, XKB_MOD_NAME_SHIFT);
      map_idx++;
      *map_bit = RETROKMOD_SHIFT;
      map_bit++;
      *map_idx = xkb_keymap_mod_get_index(xkb_map, XKB_MOD_NAME_CTRL);
      map_idx++;
      *map_bit = RETROKMOD_CTRL;
      map_bit++;
      *map_idx = xkb_keymap_mod_get_index(xkb_map, XKB_MOD_NAME_ALT);
      map_idx++;
      *map_bit = RETROKMOD_ALT;
      map_bit++;
      *map_idx = xkb_keymap_mod_get_index(xkb_map, XKB_MOD_NAME_LOGO);
      *map_bit = RETROKMOD_META;
   }

   return 0;

error:
   free_xkb();

   return -1;
}
