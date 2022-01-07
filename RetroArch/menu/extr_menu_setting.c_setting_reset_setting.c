
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int string; int * keybind; int fraction; int sizet; int unsigned_integer; int integer; int boolean; } ;
struct TYPE_9__ {int string; int * keybind; int * fraction; int * sizet; int * unsigned_integer; int * integer; int * boolean; } ;
struct TYPE_10__ {TYPE_1__ target; } ;
struct TYPE_12__ {int (* change_handler ) (TYPE_4__*) ;int size; TYPE_3__ default_value; TYPE_2__ value; } ;
typedef TYPE_4__ rarch_setting_t ;
 int fill_pathname_expand_special (int ,int ,int ) ;
 int const setting_get_type (TYPE_4__*) ;
 int setting_set_with_string_representation (TYPE_4__*,int ) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static void setting_reset_setting(rarch_setting_t* setting)
{
   if (!setting)
      return;

   switch (setting_get_type(setting))
   {
      case 136:
         *setting->value.target.boolean = setting->default_value.boolean;
         break;
      case 133:
         *setting->value.target.integer = setting->default_value.integer;
         break;
      case 128:
         *setting->value.target.unsigned_integer = setting->default_value.unsigned_integer;
         break;
      case 131:
         *setting->value.target.sizet = setting->default_value.sizet;
         break;
      case 134:
         *setting->value.target.fraction = setting->default_value.fraction;
         break;
      case 137:
         *setting->value.target.keybind = *setting->default_value.keybind;
         break;
      case 130:
      case 129:
      case 132:
      case 135:
         if (setting->default_value.string)
         {
            if (setting_get_type(setting) == 130)
               setting_set_with_string_representation(setting, setting->default_value.string);
            else
               fill_pathname_expand_special(setting->value.target.string,
                     setting->default_value.string, setting->size);
         }
         break;
      default:
         break;
   }

   if (setting->change_handler)
      setting->change_handler(setting);
}
