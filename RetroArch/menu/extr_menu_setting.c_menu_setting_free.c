
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * short_description; int * name; int * values; scalar_t__ free_flags; } ;
typedef TYPE_1__ rarch_setting_t ;





 scalar_t__ ST_NONE ;
 int free (void*) ;
 scalar_t__ setting_get_type (TYPE_1__*) ;

void menu_setting_free(rarch_setting_t *setting)
{
   unsigned values, n;
   rarch_setting_t **list = ((void*)0);

   if (!setting)
      return;

   list = (rarch_setting_t**)&setting;


   for (; setting_get_type(setting) != ST_NONE; (*list = *list + 1))
      for (values = (unsigned)setting->free_flags, n = 0; values != 0; values >>= 1, n++)
         if (values & 1)
            switch (1 << n)
            {
               case 128:
                  if (setting->values)
                     free((void*)setting->values);
                  setting->values = ((void*)0);
                  break;
               case 130:
                  if (setting->name)
                     free((void*)setting->name);
                  setting->name = ((void*)0);
                  break;
               case 129:
                  if (setting->short_description)
                     free((void*)setting->short_description);
                  setting->short_description = ((void*)0);
                  break;
               default:
                  break;
            }
}
