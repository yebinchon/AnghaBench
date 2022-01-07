
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ident; } ;


 unsigned int ARRAY_SIZE (TYPE_1__**) ;
 TYPE_1__** menu_display_ctx_drivers ;
 scalar_t__ string_is_equal (char const*,int ) ;

bool menu_display_driver_exists(const char *s)
{
   unsigned i;
   for (i = 0; i < ARRAY_SIZE(menu_display_ctx_drivers); i++)
   {
      if (string_is_equal(s, menu_display_ctx_drivers[i]->ident))
         return 1;
   }

   return 0;
}
