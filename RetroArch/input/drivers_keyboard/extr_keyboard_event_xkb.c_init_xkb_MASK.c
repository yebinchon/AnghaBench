#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xkb_mod_index_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct xkb_rule_names {char* rules; int /*<<< orphan*/  layout; int /*<<< orphan*/  variant; int /*<<< orphan*/  member_0; } ;
struct string_list {int size; TYPE_2__* elems; } ;
struct TYPE_5__ {scalar_t__* input_keyboard_layout; } ;
struct TYPE_7__ {TYPE_1__ arrays; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  MOD_MAP_SIZE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  RETROKMOD_ALT ; 
 int /*<<< orphan*/  RETROKMOD_CAPSLOCK ; 
 int /*<<< orphan*/  RETROKMOD_CTRL ; 
 int /*<<< orphan*/  RETROKMOD_META ; 
 int /*<<< orphan*/  RETROKMOD_SHIFT ; 
 int /*<<< orphan*/  XKB_CONTEXT_NO_FLAGS ; 
 int /*<<< orphan*/  XKB_KEYMAP_COMPILE_NO_FLAGS ; 
 int /*<<< orphan*/  XKB_KEYMAP_FORMAT_TEXT_V1 ; 
 int /*<<< orphan*/  XKB_MAP_COMPILE_NO_FLAGS ; 
 int /*<<< orphan*/  XKB_MOD_NAME_ALT ; 
 int /*<<< orphan*/  XKB_MOD_NAME_CAPS ; 
 int /*<<< orphan*/  XKB_MOD_NAME_CTRL ; 
 int /*<<< orphan*/  XKB_MOD_NAME_LOGO ; 
 int /*<<< orphan*/  XKB_MOD_NAME_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mod_map_bit ; 
 int /*<<< orphan*/ * mod_map_idx ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*) ; 
 struct string_list* FUNC6 (scalar_t__*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ xkb_ctx ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,struct xkb_rule_names*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ xkb_map ; 
 int /*<<< orphan*/  xkb_state ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

int FUNC12(int fd, size_t size)
{
   char *map_str        = NULL;
   mod_map_idx          = (xkb_mod_index_t *)FUNC0(
         MOD_MAP_SIZE, sizeof(xkb_mod_index_t));

   if (!mod_map_idx)
      goto error;

   mod_map_bit          = (uint16_t*)
      FUNC0(MOD_MAP_SIZE, sizeof(uint16_t));

   if (!mod_map_bit)
      goto error;

   xkb_ctx              = FUNC7(XKB_CONTEXT_NO_FLAGS);

   if (xkb_ctx)
   {
      if (fd >= 0)
      {
         map_str = (char*)FUNC3(NULL, size, PROT_READ, MAP_SHARED, fd, 0);
         if (map_str == MAP_FAILED)
            goto error;

         xkb_map = FUNC10(xkb_ctx, map_str,
               XKB_KEYMAP_FORMAT_TEXT_V1, XKB_KEYMAP_COMPILE_NO_FLAGS);
         FUNC4(map_str, size);
      }
      else
      {
         struct string_list *list   = NULL;
         struct xkb_rule_names rule = {0};
         settings_t *settings       = FUNC1();

         rule.rules = "evdev";

         if (*settings->arrays.input_keyboard_layout)
         {
            list = FUNC6(settings->arrays.input_keyboard_layout, ":");
            if (list && list->size >= 2)
               rule.variant = list->elems[1].data;
            if (list && list->size >= 1)
               rule.layout = list->elems[0].data;
         }

         xkb_map = FUNC9(xkb_ctx,
               &rule, XKB_MAP_COMPILE_NO_FLAGS);

         if (list)
            FUNC5(list);
      }
   }

   if (xkb_map)
   {
      xkb_mod_index_t *map_idx = (xkb_mod_index_t*)&mod_map_idx[0];
      uint16_t        *map_bit = (uint16_t*)&mod_map_bit[0];

      xkb_state = FUNC11(xkb_map);

      *map_idx = FUNC8(xkb_map, XKB_MOD_NAME_CAPS);
      map_idx++;
      *map_bit = RETROKMOD_CAPSLOCK;
      map_bit++;
      *map_idx = FUNC8(xkb_map, XKB_MOD_NAME_SHIFT);
      map_idx++;
      *map_bit = RETROKMOD_SHIFT;
      map_bit++;
      *map_idx = FUNC8(xkb_map, XKB_MOD_NAME_CTRL);
      map_idx++;
      *map_bit = RETROKMOD_CTRL;
      map_bit++;
      *map_idx = FUNC8(xkb_map, XKB_MOD_NAME_ALT);
      map_idx++;
      *map_bit = RETROKMOD_ALT;
      map_bit++;
      *map_idx = FUNC8(xkb_map, XKB_MOD_NAME_LOGO);
      *map_bit = RETROKMOD_META;
   }

   return 0;

error:
   FUNC2();

   return -1;
}