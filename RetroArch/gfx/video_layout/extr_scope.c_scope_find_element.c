
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int elements_count; TYPE_2__* elements; } ;
typedef TYPE_1__ scope_t ;
struct TYPE_6__ {int name; } ;
typedef TYPE_2__ element_t ;


 scalar_t__ strcmp (char const*,int ) ;

element_t *scope_find_element(scope_t *scope, const char *name)
{
   int i;

   for (i = 0; i < scope->elements_count; ++i)
   {
      if (strcmp(name, scope->elements[i].name) == 0)
         return &scope->elements[i];
   }

   return ((void*)0);
}
