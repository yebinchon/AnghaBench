
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ view_t ;
struct TYPE_6__ {int groups_count; TYPE_1__* groups; } ;
typedef TYPE_2__ scope_t ;


 scalar_t__ strcmp (char const*,int ) ;

view_t *scope_find_group(scope_t *scope, const char *name)
{
   int i;

   for (i = 0; i < scope->groups_count; ++i)
   {
      if (strcmp(name, scope->groups[i].name) == 0)
         return &scope->groups[i];
   }

   return ((void*)0);
}
