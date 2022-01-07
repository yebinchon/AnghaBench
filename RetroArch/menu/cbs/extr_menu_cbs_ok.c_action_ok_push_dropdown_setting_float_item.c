
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float* fraction; } ;
struct TYPE_7__ {TYPE_1__ target; } ;
struct TYPE_8__ {int (* change_handler ) (TYPE_3__*) ;TYPE_2__ value; } ;
typedef TYPE_3__ rarch_setting_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;


 int action_cancel_pop_default (int *,int *,int ,int ) ;
 scalar_t__ atof (char const*) ;
 int atoi (char const*) ;
 TYPE_3__* menu_setting_find_enum (int) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int action_ok_push_dropdown_setting_float_item(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   enum msg_hash_enums enum_idx = (enum msg_hash_enums)atoi(label);
   rarch_setting_t *setting = menu_setting_find_enum(enum_idx);
   float val = (float)atof(path);

   if (!setting)
      return -1;

   *setting->value.target.fraction = (float)val;

   if (setting->change_handler)
      setting->change_handler(setting);

   return action_cancel_pop_default(((void*)0), ((void*)0), 0, 0);
}
