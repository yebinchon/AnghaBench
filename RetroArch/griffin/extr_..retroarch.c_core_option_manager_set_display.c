
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t size; TYPE_1__* opts; } ;
typedef TYPE_2__ core_option_manager_t ;
struct TYPE_4__ {char const* key; int visible; } ;


 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,char const*) ;

__attribute__((used)) static void core_option_manager_set_display(core_option_manager_t *opt,
      const char *key, bool visible)
{
   size_t i;

   if (!opt || string_is_empty(key))
      return;

   for (i = 0; i < opt->size; i++)
   {
      if (string_is_empty(opt->opts[i].key))
         continue;

      if (string_is_equal(opt->opts[i].key, key))
      {
         opt->opts[i].visible = visible;
         return;
      }
   }
}
