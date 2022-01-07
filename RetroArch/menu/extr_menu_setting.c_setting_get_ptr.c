
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* boolean; void* integer; void* unsigned_integer; void* sizet; void* fraction; void* keybind; void* string; } ;
struct TYPE_6__ {TYPE_2__ target; } ;
struct TYPE_8__ {TYPE_1__ value; } ;
typedef TYPE_3__ rarch_setting_t ;
 int setting_get_type (TYPE_3__*) ;

__attribute__((used)) static void *setting_get_ptr(rarch_setting_t *setting)
{
   if (!setting)
      return ((void*)0);

   switch (setting_get_type(setting))
   {
      case 136:
         return setting->value.target.boolean;
      case 133:
         return setting->value.target.integer;
      case 128:
         return setting->value.target.unsigned_integer;
      case 131:
         return setting->value.target.sizet;
      case 134:
         return setting->value.target.fraction;
      case 137:
         return setting->value.target.keybind;
      case 130:
      case 129:
      case 132:
      case 135:
         return setting->value.target.string;
      default:
         break;
   }

   return ((void*)0);
}
