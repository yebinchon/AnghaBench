
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; int short_description; } ;
typedef TYPE_1__ rarch_setting_t ;
struct TYPE_7__ {int * cb; scalar_t__ idx; scalar_t__ type; int label_setting; int label; } ;
typedef TYPE_2__ menu_input_ctx_line_t ;
typedef int * input_keyboard_line_complete_t ;







 int menu_input_dialog_start (TYPE_2__*) ;
 int * menu_input_st_hex_cb ;
 int * menu_input_st_string_cb ;
 int * menu_input_st_uint_cb ;
 int setting_get_type (TYPE_1__*) ;

__attribute__((used)) static int setting_generic_action_ok_linefeed(rarch_setting_t *setting, bool wraparound)
{
   menu_input_ctx_line_t line;
   input_keyboard_line_complete_t cb = ((void*)0);

   if (!setting)
      return -1;

   (void)wraparound;

   switch (setting_get_type(setting))
   {
      case 131:
      case 128:
         cb = menu_input_st_uint_cb;
         break;
      case 132:
         cb = menu_input_st_hex_cb;
         break;
      case 130:
      case 129:
         cb = menu_input_st_string_cb;
         break;
      default:
         break;
   }

   line.label = setting->short_description;
   line.label_setting = setting->name;
   line.type = 0;
   line.idx = 0;
   line.cb = cb;

   if (!menu_input_dialog_start(&line))
      return -1;

   return 0;
}
