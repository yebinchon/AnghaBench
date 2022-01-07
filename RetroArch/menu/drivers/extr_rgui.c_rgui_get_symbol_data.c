
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum rgui_symbol_type { ____Placeholder_rgui_symbol_type } rgui_symbol_type ;
 int const* rgui_symbol_data_backspace ;
 int const* rgui_symbol_data_battery_100 ;
 int const* rgui_symbol_data_battery_20 ;
 int const* rgui_symbol_data_battery_40 ;
 int const* rgui_symbol_data_battery_60 ;
 int const* rgui_symbol_data_battery_80 ;
 int const* rgui_symbol_data_charging ;
 int const* rgui_symbol_data_checkmark ;
 int const* rgui_symbol_data_enter ;
 int const* rgui_symbol_data_next ;
 int const* rgui_symbol_data_shift_down ;
 int const* rgui_symbol_data_shift_up ;
 int const* rgui_symbol_data_text_cursor ;

__attribute__((used)) static const uint8_t *rgui_get_symbol_data(enum rgui_symbol_type symbol)
{
   switch (symbol)
   {
      case 140:
         return rgui_symbol_data_backspace;
      case 132:
         return rgui_symbol_data_enter;
      case 129:
         return rgui_symbol_data_shift_up;
      case 130:
         return rgui_symbol_data_shift_down;
      case 131:
         return rgui_symbol_data_next;
      case 128:
         return rgui_symbol_data_text_cursor;
      case 134:
         return rgui_symbol_data_charging;
      case 139:
         return rgui_symbol_data_battery_100;
      case 135:
         return rgui_symbol_data_battery_80;
      case 136:
         return rgui_symbol_data_battery_60;
      case 137:
         return rgui_symbol_data_battery_40;
      case 138:
         return rgui_symbol_data_battery_20;
      case 133:
         return rgui_symbol_data_checkmark;
      default:
         break;
   }

   return ((void*)0);
}
