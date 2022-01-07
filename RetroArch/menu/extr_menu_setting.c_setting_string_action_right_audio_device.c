
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct string_list {TYPE_1__* elems; scalar_t__ size; } ;
struct TYPE_7__ {int string; } ;
struct TYPE_8__ {TYPE_2__ target; } ;
struct TYPE_9__ {int size; TYPE_3__ value; } ;
typedef TYPE_4__ rarch_setting_t ;
struct TYPE_6__ {int data; } ;


 int audio_driver_get_devices_list (void**) ;
 int string_list_find_elem (struct string_list*,int ) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int setting_string_action_right_audio_device(
      rarch_setting_t *setting, bool wraparound)
{
   int audio_device_index;
   struct string_list *ptr = ((void*)0);

   if (!audio_driver_get_devices_list((void**)&ptr))
      return -1;

   if (!ptr)
      return -1;


   audio_device_index = string_list_find_elem(ptr,setting->value.target.string) -1;
   audio_device_index++;


   if (audio_device_index == (signed)ptr->size)
      audio_device_index = 0;

   strlcpy(setting->value.target.string,
         ptr->elems[audio_device_index].data, setting->size);

   return 0;
}
