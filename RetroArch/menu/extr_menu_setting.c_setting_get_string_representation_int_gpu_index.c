
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct string_list {TYPE_1__* elems; scalar_t__ size; } ;
struct TYPE_7__ {int* integer; } ;
struct TYPE_8__ {TYPE_2__ target; } ;
struct TYPE_9__ {TYPE_3__ value; } ;
typedef TYPE_4__ rarch_setting_t ;
struct TYPE_6__ {char* data; } ;


 int snprintf (char*,size_t,char*,size_t,...) ;
 int string_is_empty (char*) ;
 int video_context_driver_get_api () ;
 struct string_list* video_driver_get_gpu_api_devices (int ) ;

__attribute__((used)) static void setting_get_string_representation_int_gpu_index(rarch_setting_t *setting,
      char *s, size_t len)
{
   if (setting)
   {
      struct string_list *list = video_driver_get_gpu_api_devices(video_context_driver_get_api());

      if (list && (*setting->value.target.integer < (int)list->size) && !string_is_empty(list->elems[*setting->value.target.integer].data))
         snprintf(s, len, "%d - %s", *setting->value.target.integer, list->elems[*setting->value.target.integer].data);
      else
         snprintf(s, len, "%d", *setting->value.target.integer);
   }
}
