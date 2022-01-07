
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ view_t ;
struct TYPE_6__ {int views_count; TYPE_1__* views; } ;
typedef TYPE_2__ view_array_t ;


 scalar_t__ strcmp (char const*,int ) ;

view_t *view_array_find(view_array_t *view_array, const char *name)
{
   int i;

   for (i = 0; i < view_array->views_count; ++i)
   {
      if (strcmp(name, view_array->views[i].name) == 0)
         return &view_array->views[i];
   }
   return ((void*)0);
}
