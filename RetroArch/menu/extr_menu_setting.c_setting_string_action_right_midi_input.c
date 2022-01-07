
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct string_list {int size; TYPE_1__* elems; } ;
struct TYPE_7__ {int string; } ;
struct TYPE_8__ {TYPE_2__ target; } ;
struct TYPE_9__ {int size; TYPE_3__ value; } ;
typedef TYPE_4__ rarch_setting_t ;
struct TYPE_6__ {int data; } ;


 struct string_list* midi_driver_get_avail_inputs () ;
 int string_list_find_elem (struct string_list*,int ) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int setting_string_action_right_midi_input(rarch_setting_t *setting, bool wraparound)
{
   struct string_list *list = midi_driver_get_avail_inputs();

   if (list && list->size > 1)
   {
      int i = string_list_find_elem(list, setting->value.target.string);

      if (wraparound && i == (int)list->size)
         i = 0;
      if (i >= 0 && i < (int)list->size)
      {
         strlcpy(setting->value.target.string,
               list->elems[i].data, setting->size);
         return 0;
      }
   }

   return -1;
}
